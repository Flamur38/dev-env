# ~/.config/i3/set-fan.sh
#!/bin/bash
sleep 5
export DISPLAY=:0
export XAUTHORITY=/home/yourusername/.Xauthority
sudo /usr/bin/nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=65"

