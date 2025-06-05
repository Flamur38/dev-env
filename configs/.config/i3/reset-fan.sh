# ~/.config/i3/reset-fan.sh
#!/bin/bash
export DISPLAY=:0
export XAUTHORITY=/home/mulix/.Xauthority
sudo /usr/bin/nvidia-settings -a "[gpu:0]/GPUFanControlState=0"

