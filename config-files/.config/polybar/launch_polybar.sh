#!/usr/bin/env bash

# Kill already running bars
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
MONITOR=$(xrandr --query | grep " connected" | cut -d" " -f1 | head -n1)
polybar --reload toph &


# #!/usr/bin/env bash
#
# # Kill already running polybar instances
# killall -q polybar
#
# # Wait until the processes have been shut down
# while pgrep -u "$UID" -x polybar >/dev/null; do
#     sleep 1
# done
#
# # Launch polybar on all connected monitors
# if type "xrandr" >/dev/null 2>&1; then
#     for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#         MONITOR=$m polybar --reload toph &
#     done
# else
#     # No xrandr found, just launch normally
#     polybar --reload toph &
# fi
