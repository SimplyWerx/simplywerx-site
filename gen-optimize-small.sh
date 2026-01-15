#!/bin/bash
# Optimize all JPG and PNG images in the assets/img/originals folder
# Outputs to assets/img/optimized-small folder

# Process JPGs
for img in assets/img/originals/*.jpg assets/img/originals/*.jpeg; do
  [ -e "$img" ] || continue
  filename=$(basename "$img")
  convert "$img" -resize 512x -strip -quality 85 "assets/img/optimized-small/$filename"
done

# Process PNGs
for img in assets/img/originals/*.png; do
  [ -e "$img" ] || continue
  filename=$(basename "$img")
  convert "$img" -resize 512x -strip -quality 85 "assets/img/optimized-small/$filename"
done
