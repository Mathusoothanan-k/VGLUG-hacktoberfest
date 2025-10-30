#!/bin/bash

# Folder to save images
OUTPUT_DIR="downloaded_images"
mkdir -p "$OUTPUT_DIR"

# File containing image URLs (one per line)
URL_FILE="image_urls.txt"

# Check if URL file exists
if [[ ! -f "$URL_FILE" ]]; then
    echo "❌ File '$URL_FILE' not found!"
    echo "Please create it and add image URLs (one per line)."
    exit 1
fi

# Download each image
echo "⬇️ Starting image download..."
while IFS= read -r url; do
    if [[ -n "$url" ]]; then
        echo "Downloading: $url"
        wget -q --show-progress -P "$OUTPUT_DIR" "$url"
    fi
done < "$URL_FILE"

echo "✅ All images downloaded to '$OUTPUT_DIR/'"
