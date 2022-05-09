################################################################
# Demo Code Only. 
# Do not mofidy.
# Auther: Hang Cui
################################################################


$ cd ~/demo_ws/
$ catkin_make

$ source devel/setup.bash
$ roslaunch basic_launch gnss_sensor_init.launch

$ source devel/setup.bash
$ roslaunch basic_launch gnss_visualization.launch

$ source devel/setup.bash
$ roslaunch basic_launch dbw_joystick.launch

$ source devel/setup.bash
$ rosrun gem_gnss gem_gnss_pp_tracker_pid.py

