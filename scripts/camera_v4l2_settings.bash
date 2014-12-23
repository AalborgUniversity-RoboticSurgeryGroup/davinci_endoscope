#!/bin/bash

# Set the Terratec Grabby to use the s-video input (1) instead of the composite (0)
v4l2-ctl -d /dev/davinci_cam_right -i 1 > /dev/null
v4l2-ctl -d /dev/davinci_cam_left -i 1 > /dev/null

exit 0