#!/usr/bin/bash
pkill -f /dev/video || mpv /dev/video0  --demuxer-lavf-o=video_size=640x480 --geometry=-30-30 --autofit=27% --profile=low-latency --untimed --no-osc
