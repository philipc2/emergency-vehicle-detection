execute_process(COMMAND "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_transform_util/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/marti_common/swri_transform_util/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
