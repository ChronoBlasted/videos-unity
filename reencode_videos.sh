
#!/bin/bash

for file in *.mp4; do
  filename="${file%.*}"
  output="${filename}_fixed.mp4"
  echo "Encodage de : $file → $output"
  ffmpeg -i "$file" -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p -c:a aac -movflags +faststart "$output"
done

echo "✅ Tous les fichiers ont été réencodés !"
