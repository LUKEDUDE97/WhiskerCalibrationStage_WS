# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "collector: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icollector:/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(collector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg" NAME_WE)
add_custom_target(_collector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "collector" "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Wrench"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(collector
  "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collector
)

### Generating Services

### Generating Module File
_generate_module_cpp(collector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(collector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(collector_generate_messages collector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg" NAME_WE)
add_dependencies(collector_generate_messages_cpp _collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collector_gencpp)
add_dependencies(collector_gencpp collector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(collector
  "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collector
)

### Generating Services

### Generating Module File
_generate_module_eus(collector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(collector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(collector_generate_messages collector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg" NAME_WE)
add_dependencies(collector_generate_messages_eus _collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collector_geneus)
add_dependencies(collector_geneus collector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(collector
  "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collector
)

### Generating Services

### Generating Module File
_generate_module_lisp(collector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(collector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(collector_generate_messages collector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg" NAME_WE)
add_dependencies(collector_generate_messages_lisp _collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collector_genlisp)
add_dependencies(collector_genlisp collector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collector_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(collector
  "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collector
)

### Generating Services

### Generating Module File
_generate_module_nodejs(collector
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collector
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(collector_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(collector_generate_messages collector_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg" NAME_WE)
add_dependencies(collector_generate_messages_nodejs _collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collector_gennodejs)
add_dependencies(collector_gennodejs collector_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collector_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(collector
  "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collector
)

### Generating Services

### Generating Module File
_generate_module_py(collector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(collector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(collector_generate_messages collector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lukedude/project/whisker_calibrationstage_ws/src/collector/msg/calibration_stage_dataset.msg" NAME_WE)
add_dependencies(collector_generate_messages_py _collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collector_genpy)
add_dependencies(collector_genpy collector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(collector_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(collector_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(collector_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(collector_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(collector_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(collector_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collector
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(collector_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(collector_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(collector_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(collector_generate_messages_py std_msgs_generate_messages_py)
endif()
