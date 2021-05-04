# Gifski in Docker

-   GitHub: https://github.com/makitsune/gifski-docker
-   Docker Hub: https://hub.docker.com/r/makitsune/gifski

## Running

This will mount your current directory.

```bash
# Windows
docker run --rm -v %CD%:/root makitsune/gifski --version
# Linux
docker run --rm -v $(pwd):/root makitsune/gifski --version
```
