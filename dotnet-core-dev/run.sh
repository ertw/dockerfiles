#!/bin/sh
docker run -it --rm -p 5000:5000 --env-file ./.env --mount type=bind,source=/home/core/passenger_roster,target=/app --name dotnet-dev ertw/dotnet-core-dev
