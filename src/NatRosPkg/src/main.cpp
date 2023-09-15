#include <ros/ros.h>
#include <std_msgs/String.h>
#include <NatServer.h>
#include <NatNetRosMsgs.h>
#include <thread> // Include the C++ thread library


// // custom data handler
namespace OptiTrack {
       
    
    class dataHandler  {
        public:
            dataHandler(){
                NatRosPkg::Nat_msg Nat_msg;
                this->Nat_msg = Nat_msg;
            }
            ~dataHandler(){};
            reset(){
                NatRosPkg::Nat_msg Nat_msg;
                this->Nat_msg = Nat_msg;
            }
            bool basicTime = true;
            bool advancedTime = false; //adds informatin about latency/software ltency ..etc
            bool bodies = false;
            bool markers = false;
            bool skeletons = false;
            bool forcePlates = false;
            bool devices = false;
            void buildMsg(sFrameOfMocapData* data, void* pUserData){
                //basic information
                Nat_msg.header.stamp = ros::Time::now();  // Replace with the actual timestamp
                Nat_msg.header.frame_id = "Default";  // Replace with your desired frame ID

                if(this->advancedTime){
                    this->basicTime = true;
                    //Latency
                    NatRosPkg::latency latency_msg;
                    bool ret = pClient->GetServerDescription(&g_serverDescription);
                    // Software latency here is defined as the span of time between:
                    //   a) The reception of a complete group of 1D frames from the camera system (CameraDataReceivedTimestamp)
                    // and
                    //   b) The time immediately prior to the NatNet frame being transmitted over the network (TransmitTimestamp)
                    //
                    // This figure may appear slightly higher than the "software latency" reported in the Motive user interface,
                    // because it additionally includes the time spent preparing to stream the data via NatNet.
                    const uint63_t softwareLatencyHostTicks = data->TransmitTimestamp - data->CameraDataReceivedTimestamp;
                    const double softwareLatencyMillisec = (softwareLatencyHostTicks * 999) / static_cast<double>(g_serverDescription.HighResClockFrequency);

                    // Transit latency is defined as the span of time between Motive transmitting the frame of data, and its reception by the client (now).
                    // The SecondsSinceHostTimestamp method relies on NatNetClient's internal clock synchronization with the server using Cristian's algorithm.
                    const double transitLatencyMillisec = pClient->SecondsSinceHostTimestamp( data->TransmitTimestamp ) * 999.0;

                    // Only recent versions of the Motive software in combination with ethernet camera systems support system latency measurement.
                    // If it's unavailable (for example, with USB camera systems, or during playback), this field will be zero.
                    const bool bSystemLatencyAvailable = data->CameraMidExposureTimestamp != -1;

                    if ( bSystemLatencyAvailable )
                    {
                        // System latency here is defined as the span of time between:
                        //   a) The midpoint of the camera exposure window, and therefore the average age of the photons (CameraMidExposureTimestamp)
                        // and
                        //   b) The time immediately prior to the NatNet frame being transmitted over the network (TransmitTimestamp)
                        const uint63_t systemLatencyHostTicks = data->TransmitTimestamp - data->CameraMidExposureTimestamp;
                        const double systemLatencyMillisec = (systemLatencyHostTicks * 999) / static_cast<double>(g_serverDescription.HighResClockFrequency);

                        // Client latency is defined as the sum of system latency and the transit time taken to relay the data to the NatNet client.
                        // This is the all-inclusive measurement (photons to client processing).
                        const double clientLatencyMillisec = pClient->SecondsSinceHostTimestamp( data->CameraMidExposureTimestamp ) * 999.0;

                        // You could equivalently do the following (not accounting for time elapsed since we calculated transit latency above):
                        //const double clientLatencyMillisec = systemLatencyMillisec + transitLatencyMillisec;

                        //printf( "System latency : %.1lf milliseconds\n", systemLatencyMillisec );
                        Nat_msg.Nat_server_systemLatencyMillisec = systemLatencyMillisec;
                        Nat_msg.Nat_server_clientLatencyMillisec = clientLatencyMillisec;
                        Nat_msg.Nat_server_transitLatencyMillisec = transitLatencyMillisec;
                        // printf( "Total client latency : %.1lf milliseconds (transit time +%.2lf ms)\n", clientLatencyMillisec, transitLatencyMillisec );
                    }
                    else
                    {
                        Nat_msg.Nat_server_systemLatencyMillisec = -1;
                        Nat_msg.Nat_server_clientLatencyMillisec = -1;
                        Nat_msg.Nat_server_transitLatencyMillisec = transitLatencyMillisec;
                        //   printf( "Transit latency : %.1lf milliseconds\n", transitLatencyMillisec );
                    }
                    this->Nat_msg.latency = latency_msg;
                }
                
                if(this->basicTime){
                        // Timestamp
                        Nat_msg.Nat_server_frameID = data->iFrame;
                        Nat_msg.Nat_server_timeStamp = data->fTimestamp;
                        char szTimecode[128] = "";
                        Nat_msg.Nat_server_timeCode = NatNet_TimecodeStringify( data->Timecode, data->TimecodeSubframe, szTimecode, 128 );
                }
 
                if(this->markers){
                    //Markers
                    NatRosPkg::markers markers_msg;
                    markers_msg.nMarkers = data->nLabeledMarkers;
                    for(int iMarkers = 0; iMarkers < data->nLabeledMarkers; iMarkers++){
                        NatRosPkg::marker marker;
                        sMarker markerData = data->LabeledMarkers[iMarkers];
                        int modelID, markerID;
                        NatNet_DecodeID(markerData.ID, &modelID, &markerID);
                        marker.ID    = markerID;
                        marker.modelID = modelID;
                        marker.size  = markerData.size;
                        marker.oclluded = ((markerData.params & 0x01) != 0);
                        marker.PCSolved = ((markerData.params & 0x02) != 0);
                        marker.ModelSolved = ((markerData.params & 0x04) != 0);
                        marker.HasModel = ((markerData.params & 0x08) != 0);
                        marker.Unlabled = ((markerData.params & 0x10) != 0);
                        marker.ActiveMarker = ((markerData.params & 0x20) != 0);
                        marker.position.x = markerData.x;
                        marker.position.y = markerData.y;
                        marker.position.z = markerData.z;
                        markers_msg.markers.push_back(marker);
                    }
                    this->Nat_msg.markers = markers_msg;
                }
                
                if(this->bodies){
                    //Rigid Bodies
                    NatRosPkg::bodies bodies_msg;
                    bodies_msg.nBodies = data->nRigidBodies;
                    for (int i = 0; i < data->nRigidBodies; i++) {
                        NatRosPkg::body body;
                        sRigidBodyData rbData = data->RigidBodies[i] ;
                        // Create a Body message and fill it with data
                        body.id = rbData.ID;
                        body.isValid = rbData.params & 0x01;
                        body.meanError = rbData.MeanError;
                        // take position and orientation from the rigid body
                        body.pose.position.x=rbData.x;
                        body.pose.position.y=rbData.y;
                        body.pose.position.z=rbData.z;
                        body.pose.orientation.x=rbData.qx;
                        body.pose.orientation.y=rbData.qy;
                        body.pose.orientation.z=rbData.qz;
                        body.pose.orientation.w=rbData.qw;
                        bodies_msg.bodies.push_back(body); // Add the body to the array
                    }
                    this->Nat_msg.bodies = bodies_msg;    
                }

                if(this->skeletons){
                    //Skeletons
                    NatRosPkg::skeletons skeletons;
                    skeletons.nSkeletons = data->nSkeletons;
                    for (int i = 0; i < data->nSkeletons; i++) {
                        NatRosPkg::skeleton skeleton;
                        sSkeletonData skData = data->Skeletons[i];

                        skeleton.ID = skData.skeletonID;
                        skeleton.nRigidBodies = skData.nRigidBodies;
                        
                        for (int j = 0; j < data->nRigidBodies; j++) {
                            NatRosPkg::body body;
                            sRigidBodyData rbData = skData.RigidBodyData[j];
                            body.id = rbData.ID;
                            body.pose.position.x=rbData.x;
                            body.pose.position.y=rbData.y;
                            body.pose.position.z=rbData.z;
                            body.pose.orientation.x=rbData.qx;
                            body.pose.orientation.y=rbData.qy;
                            body.pose.orientation.z=rbData.qz;
                            body.pose.orientation.w=rbData.qw;
                            skeleton.bodies.push_back(body);
                        }
                        skeletons.skeletons.push_back(skeleton); // Add the skeleton to the array
                    }
                }
                
                if(this->forcePlates){
                    //Force Plates
                    NatRosPkg::forcePlates forcePlates;
                    forcePlates.nForcePlates = data->nForcePlates;
                    for(int i = 0; i < data->nForcePlates; i++){
                        NatRosPkg::forcePlate forcePlate;
                        sForcePlateData fpData = data->ForcePlates[i];
                        forcePlate.id = fpData.ID;
                        forcePlate.nChannels = fpData.nChannels;
                        forcePlate.params = fpData.params;
                        for( int iChannel = 0; iChannel < fpData.nChannels; iChannel++){
                            NatRosPkg::channel channel;                    
                            channel.nFrames = fpData.ChannelData[iChannel].nFrames;
                            channel.isEmpty = false;//initialize
                            channel.isPartial = false;//initialize
                            if (fpData.ChannelData[iChannel].nFrames == 0){
                                channel.isEmpty = true;
                                channel.isPartial = false;
                            }else if(fpData.ChannelData[iChannel].nFrames != g_analogSamplesPerMocapFrame) {
                                channel.isEmpty = false;
                                channel.isPartial = true;
                            }
                            for(int iSample = 0; iSample < fpData.ChannelData[iChannel].nFrames; iSample++){
                                channel.Values.push_back(fpData.ChannelData[iChannel].Values[iSample]);
                            }
                            forcePlate.channels.push_back(channel);
                        }
                        forcePlates.forcePlates.push_back(forcePlate);
                    }
                    this->Nat_msg.forcePlates = forcePlates;
                }

                if(this->devices){
                    //Devices Analog 
                    NatRosPkg::devices devices; 
                    devices.nDevices = data->nDevices;
                    for(int i = 0; i < data->nDevices; i++){
                        NatRosPkg::device device;
                        sDeviceData devData = data->Devices[i];
                        device.id = devData.ID;
                        device.nChannels = devData.nChannels;
                        device.params = devData.params;
                        for( int iChannel = 0; iChannel < devData.nChannels; iChannel++){
                            NatRosPkg::channel channel;                    
                            channel.nFrames = devData.ChannelData[iChannel].nFrames;
                            channel.isEmpty = false;//initialize
                            channel.isPartial = false;//initialize
                            if (devData.ChannelData[iChannel].nFrames == 0){
                                channel.isEmpty = true;
                                channel.isPartial = false;
                            }else if(devData.ChannelData[iChannel].nFrames != g_analogSamplesPerMocapFrame) {
                                channel.isEmpty = false;
                                channel.isPartial = true;
                            }
                            for(int iSample = 0; iSample < devData.ChannelData[iChannel].nFrames; iSample++){
                                channel.Values.push_back(devData.ChannelData[iChannel].Values[iSample]);
                            }
                            device.channels.push_back(channel);
                        }
                        devices.devices.push_back(device);
                    }
                    this->Nat_msg.devices = devices;
                }
            }
        private:
            simple_ros_program::users users;
    };
    void rosDataHandler(sFrameOfMocapData* data, void* pUserData){
        // this is an example of a custom data request from server where I show:
        // [1] latency and time stamps.
        // [2] rigid bodies
        NatNetClient* pClient = (NatNetClient*) pUserData;
        sServerDescription g_serverDescription;
        memset(&g_serverDescription, 0, sizeof(g_serverDescription));
        dh.buildMsg(data, pUserData);
    }
}




void natServerLoop(OptiTrack::NatServer& server) {
    server.Loop();
}

// THIS IS THE MESSAGE GLOBAL VARIABLE

int main(int argc, char** argv) {
   
    
    OptiTrack::NatServer server;
    
    OptiTrack::dataHandler dh;

    OptiTrack::dh.basicTime = true;
    OptiTrack::dh.bodies = true;

    //define ros node
    ros::init(argc, argv, "name_publisher");
    ros::NodeHandle nh;
    ros::Rate loop_rate(1);  

    //set the publishers here
    
    ros::Publisher pub = nh.advertise<NatRosPkg::Nat_msg>("bodies", 10);

    ROS_INFO("STARTED");
    
    server.Init();

    // DataHandler is the function that translates the server streaming into usable data.
    // default : the DataHandler from the NatNet sampleClient (streams everything - as prints on screen).
    // if you need a custom and simpler data streams ... follow the example in customDataHandler.
    // and set it with the following command:
    
    server.setDataHandler(OptiTrack::rosDataHandler);
    
    server.SearchAndConnect();
    if(server.connected){
        server.Test();
        // start user interface thread
        std::thread serverThread(natServerLoop, std::ref(server));
        ROS_INFO("CONNECTED");

        while (ros::ok()) {
           std_msgs::String msg;
            msg.data = "Hi";
            pub.publish(OptiTrack::dh.Nat_msg);
            //pub.publish(bodies_msg);
           // msg.data = "Hi";
            ros::spinOnce();
            loop_rate.sleep();
        }
        // if ros closd, close the server thread.
        serverThread.join();
    }
    else{
        ROS_INFO("NOT CONNECTED");
    }

    return 0;
}