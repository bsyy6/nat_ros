# Install script for directory: /home/ahalab/NatRos/src/NatRosPkg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ahalab/NatRos/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/NatRosPkg/msg" TYPE FILE FILES
    "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
    "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/NatRosPkg/cmake" TYPE FILE FILES "/home/ahalab/NatRos/build/NatRosPkg/catkin_generated/installspace/NatRosPkg-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ahalab/NatRos/devel/include/NatRosPkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ahalab/NatRos/devel/share/roseus/ros/NatRosPkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ahalab/NatRos/devel/share/common-lisp/ros/NatRosPkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ahalab/NatRos/devel/share/gennodejs/ros/NatRosPkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ahalab/NatRos/devel/lib/python3/dist-packages/NatRosPkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ahalab/NatRos/devel/lib/python3/dist-packages/NatRosPkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ahalab/NatRos/build/NatRosPkg/catkin_generated/installspace/NatRosPkg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/NatRosPkg/cmake" TYPE FILE FILES "/home/ahalab/NatRos/build/NatRosPkg/catkin_generated/installspace/NatRosPkg-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/NatRosPkg/cmake" TYPE FILE FILES
    "/home/ahalab/NatRos/build/NatRosPkg/catkin_generated/installspace/NatRosPkgConfig.cmake"
    "/home/ahalab/NatRos/build/NatRosPkg/catkin_generated/installspace/NatRosPkgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/NatRosPkg" TYPE FILE FILES "/home/ahalab/NatRos/src/NatRosPkg/package.xml")
endif()

