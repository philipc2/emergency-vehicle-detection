# Install script for directory: /home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_nodelet

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/catkin_generated/installspace/swri_nodelet.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_nodelet/cmake" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/catkin_generated/installspace/swri_nodelet-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_nodelet/cmake" TYPE FILE FILES
    "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/catkin_generated/installspace/swri_nodeletConfig.cmake"
    "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/catkin_generated/installspace/swri_nodeletConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_nodelet" TYPE FILE FILES "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/swri_nodelet" TYPE PROGRAM FILES "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/nodes/nodelet")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swri_nodelet" TYPE FILE FILES
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/nodelet.cpp.in"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/nodelet_plugins.xml"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/swri_nodelet" TYPE DIRECTORY FILES "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/marti_common/swri_nodelet/include/swri_nodelet/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

