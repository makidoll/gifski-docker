# Gifski in Docker

## Running

This will mount your current directory.

```bash
# Windows
docker run --rm -v %CD%:/root makitsune/gifski --version
# Linux
docker run --rm -v $(pwd):/root makitsune/gifski --version
```
