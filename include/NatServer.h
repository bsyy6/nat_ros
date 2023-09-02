// relies on NatNet Sample client header folder.
// organized into smaller steps

#ifndef NATSERVER_H
#define NATSERVER_H


#include <inttypes.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <vector>


#ifdef _WIN32
#   include <conio.h>
#else
#   include <unistd.h>
#   include <termios.h>
#endif

#include <NatNetTypes.h>
#include <NatNetCAPI.h>
#include <NatNetClient.h>


namespace OptiTrack {
    class NatServer
    {
        public:


        NatNetClient* g_pClient = NULL;
        static const ConnectionType kDefaultConnectionType = ConnectionType_Multicast;
        sServerDescription g_serverDescription;
        //std::vector< sNatNetDiscoveredServer > g_discoveredServers;
        sNatNetClientConnectParams g_connectParams;
        char g_discoveredMulticastGroupAddr[kNatNetIpv4AddrStrLenMax] = NATNET_DEFAULT_MULTICAST_ADDRESS;
       
        
        
        bool connected = false;
        
        NatServer();
        ~NatServer();

        void Version();

        void Init();   // starts a server client
        int SearchAndConnect(); // searches for available servers
        
        void Test();
        void Loop();
        void ResetClient();
        void DisconnectClient();
        void FrameCallback(sFrameOfMocapData *data, void* pUserData);
        void setDataHandler(void(*newDataHandler)(sFrameOfMocapData* data, void* pUserData));
        int ConnectClient();// Connects to a spcific client. 
        
        private:

    };
    
    static int g_analogSamplesPerMocapFrame;
    static std::vector< sNatNetDiscoveredServer > g_discoveredServers;
    void DataHandler(sFrameOfMocapData* data, void* pUserData);
    void MessageHandler( Verbosity msgType, const char* msg );
    void ServerDiscoveredCallback( const sNatNetDiscoveredServer* pDiscoveredServer, void* pUserContext );
    
    #ifndef _WIN32
    char getch();
    #endif

}


#endif
