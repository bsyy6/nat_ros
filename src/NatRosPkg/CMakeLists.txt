cmake_minimum_required(VERSION 3.0.2)

project(NatRosPkg)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  message_generation
  std_msgs
  geometry_msgs
)
file(GLOB msg_files RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/msg msg/*.msg)

add_message_files(
  DIRECTORY msg
  FILES
  ${msg_files}
)
generate_messages(
	DEPENDENCIES
	std_msgs
  geometry_msgs  
)

catkin_package()

include_directories(
 ${catkin_INCLUDE_DIRS}
 ${PROJECT_SOURCE_DIR}/include
 ${PROJECT_SOURCE_DIR}/msg
)

add_executable(name_publisher src/main.cpp src/NatServer.cpp )

target_link_libraries(name_publisher ${catkin_LIBRARIES} ${PROJECT_SOURCE_DIR}/lib/libNatNet.so)
