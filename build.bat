set /p version=< version.txt
docker build -t ghcr.io/makidrone/gifski:%version% --build-arg version=%version% .
docker tag ghcr.io/makidrone/gifski:%version% ghcr.io/makidrone/gifski:latest