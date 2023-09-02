#include "NatServer.h"
#include "ros/ros.h"
#include "std_msgs/String.h"

/* This is the ROS version of NatServer */

/// custom data handler 
namespace OptiTrack {

    void customDataHandler(sFrameOfMocapData* data, void* pUserData){
        // this is an example of a custom data request from server where I show:
        // [1] latency and time stamps.
        // [2] rigid bodies

        NatNetClient* pClient = (NatNetClient*) pUserData;

        sServerDescription g_serverDescription;
        memset(&g_serverDescription, 0, sizeof(g_serverDescription));
        bool ret = pClient->GetServerDescription(&g_serverDescription);
        // starting my publishers
        ros::Publisher RigidBodies_pub = nh.advertise<std_msgs::String>("RigidBodies", 1000);


        const uint64_t softwareLatencyHostTicks = data->TransmitTimestamp - data->CameraDataReceivedTimestamp;
        const double softwareLatencyMillisec = (softwareLatencyHostTicks * 1000) / static_cast<double>(g_serverDescription.HighResClockFrequency);

        // Transit latency is defined as the span of time between Motive transmitting the frame of data, and its reception by the client (now).
        // The SecondsSinceHostTimestamp method relies on NatNetClient's internal clock synchronization with the server using Cristian's algorithm.
        const double transitLatencyMillisec = pClient->SecondsSinceHostTimestamp( data->TransmitTimestamp ) * 1000.0;

        int i=0;

        printf("FrameID : %d\n", data->iFrame);
        printf("Timestamp : %3.2lf\n", data->fTimestamp);
        printf("Software latency : %.2lf milliseconds\n", softwareLatencyMillisec);

        // Only recent versions of the Motive software in combination with ethernet camera systems support system latency measurement.
        // If it's unavailable (for example, with USB camera systems, or during playback), this field will be zero.
        const bool bSystemLatencyAvailable = data->CameraMidExposureTimestamp != 0;

        if ( bSystemLatencyAvailable )
        {
            // System latency here is defined as the span of time between:
            //   a) The midpoint of the camera exposure window, and therefore the average age of the photons (CameraMidExposureTimestamp)
            // and
            //   b) The time immediately prior to the NatNet frame being transmitted over the network (TransmitTimestamp)
            const uint64_t systemLatencyHostTicks = data->TransmitTimestamp - data->CameraMidExposureTimestamp;
            const double systemLatencyMillisec = (systemLatencyHostTicks * 1000) / static_cast<double>(g_serverDescription.HighResClockFrequency);

            // Client latency is defined as the sum of system latency and the transit time taken to relay the data to the NatNet client.
            // This is the all-inclusive measurement (photons to client processing).
            const double clientLatencyMillisec = pClient->SecondsSinceHostTimestamp( data->CameraMidExposureTimestamp ) * 1000.0;

            // You could equivalently do the following (not accounting for time elapsed since we calculated transit latency above):
            //const double clientLatencyMillisec = systemLatencyMillisec + transitLatencyMillisec;

            printf( "System latency : %.2lf milliseconds\n", systemLatencyMillisec );
            printf( "Total client latency : %.2lf milliseconds (transit time +%.2lf ms)\n", clientLatencyMillisec, transitLatencyMillisec );
        }
        else
        {
            printf( "Transit latency : %.2lf milliseconds\n", transitLatencyMillisec );
        }

        // FrameOfMocapData params
        bool bIsRecording = ((data->params & 0x01)!=0);
        bool bTrackedModelsChanged = ((data->params & 0x02)!=0);
        if(bIsRecording)
            printf("RECORDING\n");
        if(bTrackedModelsChanged)
            printf("Models Changed.\n");
        

        // timecode - for systems with an eSync and SMPTE timecode generator - decode to values
        int hour, minute, second, frame, subframe;
        NatNet_DecodeTimecode( data->Timecode, data->TimecodeSubframe, &hour, &minute, &second, &frame, &subframe );
        // decode to friendly string
        char szTimecode[128] = "";
        NatNet_TimecodeStringify( data->Timecode, data->TimecodeSubframe, szTimecode, 128 );
        printf("Timecode : %s\n", szTimecode);

        // Rigid Bodies
        printf("Rigid Bodies [Count=%d]\n", data->nRigidBodies);
        for(i=0; i < data->nRigidBodies; i++)
        {
            // params
            // 0x01 : bool, rigid body was successfully tracked in this frame
            bool bTrackingValid = data->RigidBodies[i].params & 0x01;

            printf("Rigid Body [ID=%d  Error=%3.2f  Valid=%d]\n", data->RigidBodies[i].ID, data->RigidBodies[i].MeanError, bTrackingValid);
            printf("\tx\ty\tz\tqx\tqy\tqz\tqw\n");
            printf("\t%3.2f\t%3.2f\t%3.2f\t%3.2f\t%3.2f\t%3.2f\t%3.2f\n",
                data->RigidBodies[i].x,
                data->RigidBodies[i].y,
                data->RigidBodies[i].z,
                data->RigidBodies[i].qx,
                data->RigidBodies[i].qy,
                data->RigidBodies[i].qz,
                data->RigidBodies[i].qw);
        }
    }

}

int main(int argc, char **argv){
    
    ros::init(argc, argv, "optitrack");
    ros::NodeHandle nh(~ros::this_node::getNamespace());

    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
    ros::Rate loop_rate(1);

    // strting the optitrack server

    OptiTrack::NatServer server;

    server.Init();

    // DataHandler is the function that translates the server streaming into usable data.
    // default : the DataHandler from the NatNet sampleClient (streams everything).
    // if you need a custom and simpler data stream follow the example in customDataHandler.
    // and set it with the following command:
    
    server.setDataHandler(OptiTrack::customDataHandler);
    
    //
    
    server.SearchAndConnect();
    
    if(server.connected){
        server.Test();
    }

    while (ros::ok())
    {
        
        ros::spinOnce();
        loop_rate.sleep();
    }
    

}