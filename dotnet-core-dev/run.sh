#!/bin/sh
docker run -it --rm -p 5000:5000 --env-file=./.env --network=passenger_roster_overlay --mount type=bind,source=/home/core/passenger_roster,target=/app --name=dotnet-dev ertw/dotnet-core-dev
