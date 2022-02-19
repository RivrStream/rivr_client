#!/bin/bash

mkdir streaming_output

cd streaming_output

ffmpeg -f avfoundation -framerate 30 -pixel_format yuyv422 -i "0" -c:v libx264 -crf 21 -preset veryfast -b:v 100M -b:a 128k -f hls -hls_list_size 2 -hls_flags independent_segments -hls_flags delete_segments -hls_segment_type mpegts -hls_segment_filename data%02d.ts -master_pl_name master.m3u8 out1


