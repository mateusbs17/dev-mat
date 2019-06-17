ffmpeg -y \
-f x11grab -grab_x 620 -grab_y 1080 -r 30 -s 1360x768 -i :0.0 \
-f pulse -ac 2 -ar 44100 -i default \
-f pulse -ac 2 -ar 48000 -i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor \
-filter_complex amix=inputs=2 \
"video_recording_$(date +%x | sed 's/\//_/g').mkv"
