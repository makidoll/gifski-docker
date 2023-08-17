set /p version=< version.txt
docker push ghcr.io/makidrone/gifski:%version%
docker push ghcr.io/makidrone/gifski:latest