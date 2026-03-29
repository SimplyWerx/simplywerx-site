#!/bin/bash
# Optimize all JPG and PNG images in the assets/img/originals folder
# Outputs WebP files to assets/img/optimized-small folder

mkdir -p assets/img/optimized-small

for img in assets/img/originals/*.jpg assets/img/originals/*.jpeg assets/img/originals/*.png; do
  [ -e "$img" ] || continue
  filename=$(basename "$img")
  output_name="${filename%.*}.webp"
  convert "$img" -resize 512x -strip -quality 85 "assets/img/optimized-small/$output_name"
done
