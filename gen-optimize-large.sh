#!/bin/bash
# Optimize specific images from a list
# Outputs to assets/img/optimized-large folder

# List of files to process (add your filenames here)
FILES=(
  "20250323_212135.jpg"
  #"IMG-20220617-WA0005.jpg"
  #"IMG-20230722-WA0001.jpg"
  # Add more filenames here
)

# Process each file in the list
for filename in "${FILES[@]}"; do
  img="assets/img/originals/$filename"
  
  # Check if file exists
  if [ ! -f "$img" ]; then
    echo "Warning: $img not found, skipping..."
    continue
  fi
  
  # Process the image
  convert "$img" -resize 1024x -strip -quality 85 "assets/img/optimized-large/$filename"
  echo "Processed: $filename"
done

echo "Done!"
