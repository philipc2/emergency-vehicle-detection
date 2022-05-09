# Install script for directory: /home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gem/team-waymoo/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/automotive_navigation_msgs/msg" TYPE FILE FILES
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/CommandWithHandshake.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/DesiredDestination.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/Direction.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/DistanceToDestination.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/LaneBoundary.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/LaneBoundaryArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/ModuleState.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/PointOfInterestArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/PointOfInterest.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/PointOfInterestRequest.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/PointOfInterestResponse.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/PointOfInterestStatus.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/msg/RoadNetworkBoundaries.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/automotive_navigation_msgs/srv" TYPE FILE FILES "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/srv/GetImageForMapTile.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/automotive_navigation_msgs/cmake" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/catkin_generated/installspace/automotive_navigation_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/include/automotive_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/share/roseus/ros/automotive_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/share/common-lisp/ros/automotive_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/share/gennodejs/ros/automotive_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/gem/team-waymoo/devel/lib/python3/dist-packages/automotive_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/lib/python3/dist-packages/automotive_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/catkin_generated/installspace/automotive_navigation_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/automotive_navigation_msgs/cmake" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/catkin_generated/installspace/automotive_navigation_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/automotive_navigation_msgs/cmake" TYPE FILE FILES
    "/home/gem/team-waymoo/build/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/catkin_generated/installspace/automotive_navigation_msgsConfig.cmake"
    "/home/gem/team-waymoo/build/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/catkin_generated/installspace/automotive_navigation_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/automotive_navigation_msgs" TYPE FILE FILES "/home/gem/team-waymoo/src/hardware_drivers/as_drivers/automotive_autonomy_msgs/automotive_navigation_msgs/package.xml")
endif()

