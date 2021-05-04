set /p version=< version.txt
docker build -t makitsune/gifski:%version% --build-arg version=%version% .
docker tag makitsune/gifski:%version% makitsune/gifski:latest