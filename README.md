# Gifski in Docker

## Running

This will mount your current directory.

```bash
# Windows
docker run --rm -v "%CD%":/root ghcr.io/makidrone/gifski --help
# Linux
docker run --rm -v "$(pwd)":/root ghcr.io/makidrone/gifski --help
```
