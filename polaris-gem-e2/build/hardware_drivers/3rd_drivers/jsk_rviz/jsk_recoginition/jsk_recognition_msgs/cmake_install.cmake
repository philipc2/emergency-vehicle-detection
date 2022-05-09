# Install script for directory: /home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_msgs/msg" TYPE FILE FILES
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Accuracy.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/BoundingBoxArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/BoundingBoxMovement.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/BoundingBox.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/BoundingBoxArrayWithCameraInfo.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Circle2DArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Circle2D.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ClassificationResult.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ClusterPointIndices.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ColorHistogramArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ColorHistogram.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/DepthCalibrationParameter.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/DepthErrorResult.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/HeightmapConfig.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Histogram.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/HistogramWithRangeBin.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/HistogramWithRange.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/HistogramWithRangeArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/HumanSkeleton.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/HumanSkeletonArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ICPResult.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ImageDifferenceValue.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Int32Stamped.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Label.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/LabelArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/LineArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Line.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ModelCoefficientsArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Object.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ObjectArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ParallelEdgeArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ParallelEdge.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/PlotData.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/PointsArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/PolygonArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/PosedCameraInfo.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/RectArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Rect.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/RotatedRect.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/RotatedRectStamped.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SimpleHandle.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SimpleOccupancyGridArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SimpleOccupancyGrid.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SlicedPointCloud.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SnapItRequest.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SparseImage.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SparseOccupancyGridArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SparseOccupancyGridCell.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SparseOccupancyGridColumn.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SparseOccupancyGrid.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Spectrum.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/TimeRange.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/TorusArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Torus.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/TrackerStatus.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/TrackingStatus.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/BoolStamped.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/VectorArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/WeightedPoseArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ContactSensor.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/ContactSensorArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/PlotDataArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/Segment.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SegmentStamped.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/SegmentArray.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/PeoplePose.msg"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/msg/PeoplePoseArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_msgs/srv" TYPE FILE FILES
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/CallPolygon.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/CallSnapIt.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/CheckCircle.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/CheckCollision.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/EnvironmentLock.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/EuclideanSegment.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/ICPAlign.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/ICPAlignWithBox.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/NonMaximumSuppression.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/PolygonOnEnvironment.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/RobotPickupReleasePoint.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/SaveMesh.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/SetDepthCalibrationParameter.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/SetLabels.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/SetPointCloud2.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/SetTemplate.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/SnapFootstep.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/SwitchTopic.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/TowerPickUp.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/TowerRobotMoveCommand.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/TransformScreenpoint.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/UpdateOffset.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/WhiteBalancePoints.srv"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/srv/WhiteBalance.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_msgs/cmake" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/catkin_generated/installspace/jsk_recognition_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/include/jsk_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/share/roseus/ros/jsk_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/share/common-lisp/ros/jsk_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/share/gennodejs/ros/jsk_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/gem/team-waymoo/devel/lib/python3/dist-packages/jsk_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gem/team-waymoo/devel/lib/python3/dist-packages/jsk_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/catkin_generated/installspace/jsk_recognition_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_msgs/cmake" TYPE FILE FILES "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/catkin_generated/installspace/jsk_recognition_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_msgs/cmake" TYPE FILE FILES
    "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/catkin_generated/installspace/jsk_recognition_msgsConfig.cmake"
    "/home/gem/team-waymoo/build/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/catkin_generated/installspace/jsk_recognition_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_msgs" TYPE FILE FILES "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_recognition_msgs" TYPE DIRECTORY FILES
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/sample"
    "/home/gem/team-waymoo/src/hardware_drivers/3rd_drivers/jsk_rviz/jsk_recoginition/jsk_recognition_msgs/scripts"
    USE_SOURCE_PERMISSIONS)
endif()

