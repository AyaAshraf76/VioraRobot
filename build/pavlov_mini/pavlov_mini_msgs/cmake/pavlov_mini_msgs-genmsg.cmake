# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pavlov_mini_msgs: 4 messages, 4 services")

set(MSG_I_FLAGS "-Ipavlov_mini_msgs:/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pavlov_mini_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv" ""
)

get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv" ""
)

get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv" ""
)

get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv" NAME_WE)
add_custom_target(_pavlov_mini_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pavlov_mini_msgs" "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Services
_generate_srv_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_cpp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Module File
_generate_module_cpp(pavlov_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pavlov_mini_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pavlov_mini_msgs_generate_messages pavlov_mini_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_cpp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pavlov_mini_msgs_gencpp)
add_dependencies(pavlov_mini_msgs_gencpp pavlov_mini_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pavlov_mini_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Services
_generate_srv_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_eus(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Module File
_generate_module_eus(pavlov_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pavlov_mini_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pavlov_mini_msgs_generate_messages pavlov_mini_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_eus _pavlov_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pavlov_mini_msgs_geneus)
add_dependencies(pavlov_mini_msgs_geneus pavlov_mini_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pavlov_mini_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Services
_generate_srv_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_lisp(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Module File
_generate_module_lisp(pavlov_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pavlov_mini_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pavlov_mini_msgs_generate_messages pavlov_mini_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_lisp _pavlov_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pavlov_mini_msgs_genlisp)
add_dependencies(pavlov_mini_msgs_genlisp pavlov_mini_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pavlov_mini_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Services
_generate_srv_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_nodejs(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Module File
_generate_module_nodejs(pavlov_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pavlov_mini_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pavlov_mini_msgs_generate_messages pavlov_mini_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_nodejs _pavlov_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pavlov_mini_msgs_gennodejs)
add_dependencies(pavlov_mini_msgs_gennodejs pavlov_mini_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pavlov_mini_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_msg_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Services
_generate_srv_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)
_generate_srv_py(pavlov_mini_msgs
  "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
)

### Generating Module File
_generate_module_py(pavlov_mini_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pavlov_mini_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pavlov_mini_msgs_generate_messages pavlov_mini_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/robot_state.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/feet_pressure.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/eyes_pos.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/msg/contact_detection.msg" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_motor_calibration.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_gait.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/connect_servos.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo36/project_ws/src/pavlov_mini/pavlov_mini_msgs/srv/set_face.srv" NAME_WE)
add_dependencies(pavlov_mini_msgs_generate_messages_py _pavlov_mini_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pavlov_mini_msgs_genpy)
add_dependencies(pavlov_mini_msgs_genpy pavlov_mini_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pavlov_mini_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pavlov_mini_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pavlov_mini_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pavlov_mini_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pavlov_mini_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pavlov_mini_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pavlov_mini_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pavlov_mini_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pavlov_mini_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pavlov_mini_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pavlov_mini_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pavlov_mini_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pavlov_mini_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pavlov_mini_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pavlov_mini_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pavlov_mini_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
