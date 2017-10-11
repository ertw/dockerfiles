#!/bin/sh
docker run -it --rm -p 5000:5000 --mount source=dotnetdevcompose_app-volume,target=/app ertw/dotnet-core-dev
