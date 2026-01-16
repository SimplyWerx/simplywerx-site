#!/bin/bash
# Optimize all images from a list
# Outputs to assets/img/optimized-large folder

# Process JPGs
for img in assets/img/originals/*.jpg assets/img/originals/*.jpeg; do
  [ -e "$img" ] || continue
  filename=$(basename "$img")
  convert "$img" -resize 1024x -strip -quality 85 "assets/img/optimized-large/$filename"
done

# Process PNGs
for img in assets/img/originals/*.png; do
  [ -e "$img" ] || continue
  filename=$(basename "$img")
  convert "$img" -resize 1024x -strip -quality 85 "assets/img/optimized-large/$filename"
done