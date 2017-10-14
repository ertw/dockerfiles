docker run -it --rm --env-file=./.env --network=passenger_roster_overlay --mount type=bind,source=/home/core/passenger_roster,target=/root/dev --name=alpine-dev ertw/alpine-dev /bin/zsh
