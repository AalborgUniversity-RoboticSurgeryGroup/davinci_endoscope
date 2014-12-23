cmake_minimum_required(VERSION 2.8.3)
project(davinci_endoscope)

find_package(catkin REQUIRED)

catkin_package(
 CATKIN_DEPENDS usb_cam
 DEPENDS v4l-utils
)

install(PROGRAMS
  scripts/camera_v4l2_settings.bash
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(FILES
  launch/endoscope.launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
