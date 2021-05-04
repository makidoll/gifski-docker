set /p version=< version.txt
docker push makitsune/gifski:%version%
docker push makitsune/gifski:latest