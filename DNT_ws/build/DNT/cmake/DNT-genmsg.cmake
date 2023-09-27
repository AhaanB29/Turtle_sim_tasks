# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "DNT: 1 messages, 2 services")

set(MSG_I_FLAGS "-IDNT:/home/ahaanbanerjee/DNT_ws/src/DNT/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(DNT_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg" NAME_WE)
add_custom_target(_DNT_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "DNT" "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg" ""
)

get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv" NAME_WE)
add_custom_target(_DNT_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "DNT" "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv" ""
)

get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv" NAME_WE)
add_custom_target(_DNT_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "DNT" "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/DNT
)

### Generating Services
_generate_srv_cpp(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/DNT
)
_generate_srv_cpp(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/DNT
)

### Generating Module File
_generate_module_cpp(DNT
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/DNT
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(DNT_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(DNT_generate_messages DNT_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg" NAME_WE)
add_dependencies(DNT_generate_messages_cpp _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv" NAME_WE)
add_dependencies(DNT_generate_messages_cpp _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv" NAME_WE)
add_dependencies(DNT_generate_messages_cpp _DNT_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(DNT_gencpp)
add_dependencies(DNT_gencpp DNT_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS DNT_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/DNT
)

### Generating Services
_generate_srv_eus(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/DNT
)
_generate_srv_eus(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/DNT
)

### Generating Module File
_generate_module_eus(DNT
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/DNT
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(DNT_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(DNT_generate_messages DNT_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg" NAME_WE)
add_dependencies(DNT_generate_messages_eus _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv" NAME_WE)
add_dependencies(DNT_generate_messages_eus _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv" NAME_WE)
add_dependencies(DNT_generate_messages_eus _DNT_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(DNT_geneus)
add_dependencies(DNT_geneus DNT_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS DNT_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/DNT
)

### Generating Services
_generate_srv_lisp(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/DNT
)
_generate_srv_lisp(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/DNT
)

### Generating Module File
_generate_module_lisp(DNT
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/DNT
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(DNT_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(DNT_generate_messages DNT_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg" NAME_WE)
add_dependencies(DNT_generate_messages_lisp _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv" NAME_WE)
add_dependencies(DNT_generate_messages_lisp _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv" NAME_WE)
add_dependencies(DNT_generate_messages_lisp _DNT_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(DNT_genlisp)
add_dependencies(DNT_genlisp DNT_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS DNT_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/DNT
)

### Generating Services
_generate_srv_nodejs(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/DNT
)
_generate_srv_nodejs(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/DNT
)

### Generating Module File
_generate_module_nodejs(DNT
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/DNT
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(DNT_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(DNT_generate_messages DNT_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg" NAME_WE)
add_dependencies(DNT_generate_messages_nodejs _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv" NAME_WE)
add_dependencies(DNT_generate_messages_nodejs _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv" NAME_WE)
add_dependencies(DNT_generate_messages_nodejs _DNT_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(DNT_gennodejs)
add_dependencies(DNT_gennodejs DNT_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS DNT_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/DNT
)

### Generating Services
_generate_srv_py(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/DNT
)
_generate_srv_py(DNT
  "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/DNT
)

### Generating Module File
_generate_module_py(DNT
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/DNT
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(DNT_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(DNT_generate_messages DNT_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/msg/IOTsensor.msg" NAME_WE)
add_dependencies(DNT_generate_messages_py _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/AddTwoInt.srv" NAME_WE)
add_dependencies(DNT_generate_messages_py _DNT_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ahaanbanerjee/DNT_ws/src/DNT/srv/areacal.srv" NAME_WE)
add_dependencies(DNT_generate_messages_py _DNT_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(DNT_genpy)
add_dependencies(DNT_genpy DNT_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS DNT_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/DNT)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/DNT
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(DNT_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/DNT)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/DNT
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(DNT_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/DNT)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/DNT
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(DNT_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/DNT)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/DNT
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(DNT_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/DNT)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/DNT\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/DNT
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(DNT_generate_messages_py std_msgs_generate_messages_py)
endif()
