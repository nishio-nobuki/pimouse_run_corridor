#!/bin/bash -xve

#copy ripository to workspace
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor/

#bring pimouse_ros to workspace by using 'git clone'
cd ~/catkin_ws/src/
git clone --depth=1 http://github.com/nishio-nobuki/pimouse_ros.git

cd ~/catkin_ws
catkin_make
