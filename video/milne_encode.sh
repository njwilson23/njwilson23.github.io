# /bin/bash

# Webm version
ffmpeg -i milne.mp4 -ss 20 -t 5 -vcodec libvpx -strict -2 -b:v 400000 -an -vf scale=640:360 milne_400k_1.webm

ffmpeg -i milne.mp4 -ss 90 -t 10 -vcodec libvpx -strict -2 -b:v 400000 -an -vf scale=640:360 milne_400k_3.webm

ffmpeg -i milne.mp4 -ss 65 -t 10 -vcodec libvpx -strict -2 -b:v 400000 -an -vf scale=640:360 milne_400k_2.webm

echo -e "file milne_400k_1.webm\nfile milne_400k_2.webm\nfile milne_400k_3.webm" > tmp

ffmpeg -f concat -i tmp -c copy milne_400k_concat.webm

# h.264 version

ffmpeg -i milne.mp4 -ss 20 -t 5 -vcodec libx264 -strict -2 -b:v 400000 -an -vf scale=640:360 milne_400k_1.mp4

ffmpeg -i milne.mp4 -ss 90 -t 10 -vcodec libx264 -strict -2 -b:v 400000 -an -vf scale=640:360 milne_400k_3.mp4

ffmpeg -i milne.mp4 -ss 65 -t 10 -vcodec libx264 -strict -2 -b:v 400000 -an -vf scale=640:360 milne_400k_2.mp4

echo -e "file milne_400k_1.mp4\nfile milne_400k_2.mp4\nfile milne_400k_3.mp4" > tmp

ffmpeg -f concat -i tmp -c copy milne_400k_concat.mp4

rm tmp

# Get loading image
ffmpeg -i milne.mp4 -vframes 1 -f image2 frame1.jpg
