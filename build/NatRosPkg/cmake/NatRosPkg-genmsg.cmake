# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "NatRosPkg: 12 messages, 0 services")

set(MSG_I_FLAGS "-INatRosPkg:/home/ahalab/NatRos/src/NatRosPkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(NatRosPkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg" "NatRosPkg/device:NatRosPkg/markers:NatRosPkg/marker:geometry_msgs/Quaternion:geometry_msgs/Pose:NatRosPkg/skeletons:NatRosPkg/body:geometry_msgs/Point:NatRosPkg/devices:NatRosPkg/skeleton:NatRosPkg/channel:std_msgs/Header:NatRosPkg/bodies"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg" "NatRosPkg/body:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg" ""
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg" "NatRosPkg/channel"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg" "NatRosPkg/channel:NatRosPkg/device"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg" "NatRosPkg/channel"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg" "NatRosPkg/channel:NatRosPkg/forcePlate"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg" "geometry_msgs/Point:NatRosPkg/marker"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg" "NatRosPkg/body:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg" NAME_WE)
add_custom_target(_NatRosPkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "NatRosPkg" "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:NatRosPkg/body:geometry_msgs/Point:NatRosPkg/skeleton"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_cpp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(NatRosPkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(NatRosPkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(NatRosPkg_generate_messages NatRosPkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_cpp _NatRosPkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(NatRosPkg_gencpp)
add_dependencies(NatRosPkg_gencpp NatRosPkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS NatRosPkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)
_generate_msg_eus(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
)

### Generating Services

### Generating Module File
_generate_module_eus(NatRosPkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(NatRosPkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(NatRosPkg_generate_messages NatRosPkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_eus _NatRosPkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(NatRosPkg_geneus)
add_dependencies(NatRosPkg_geneus NatRosPkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS NatRosPkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)
_generate_msg_lisp(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(NatRosPkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(NatRosPkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(NatRosPkg_generate_messages NatRosPkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_lisp _NatRosPkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(NatRosPkg_genlisp)
add_dependencies(NatRosPkg_genlisp NatRosPkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS NatRosPkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)
_generate_msg_nodejs(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(NatRosPkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(NatRosPkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(NatRosPkg_generate_messages NatRosPkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_nodejs _NatRosPkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(NatRosPkg_gennodejs)
add_dependencies(NatRosPkg_gennodejs NatRosPkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS NatRosPkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  "${MSG_I_FLAGS}"
  "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)
_generate_msg_py(NatRosPkg
  "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
)

### Generating Services

### Generating Module File
_generate_module_py(NatRosPkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(NatRosPkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(NatRosPkg_generate_messages NatRosPkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/Nat_msg.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/bodies.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/body.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/channel.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/device.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/devices.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlate.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/forcePlates.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/marker.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/markers.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeleton.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahalab/NatRos/src/NatRosPkg/msg/skeletons.msg" NAME_WE)
add_dependencies(NatRosPkg_generate_messages_py _NatRosPkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(NatRosPkg_genpy)
add_dependencies(NatRosPkg_genpy NatRosPkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS NatRosPkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/NatRosPkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(NatRosPkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(NatRosPkg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/NatRosPkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(NatRosPkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(NatRosPkg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/NatRosPkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(NatRosPkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(NatRosPkg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/NatRosPkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(NatRosPkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(NatRosPkg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/NatRosPkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(NatRosPkg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(NatRosPkg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
