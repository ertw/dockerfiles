#!/bin/sh
docker run -it --rm -p 5000:5000 --mount type=bind,source=/home/core/passenger_roster,target=/app ertw/dotnet-core-dev
