docker run -it --rm --env-file ./.env --mount type=bind,source=/home/core/passenger_roster,target=/root/dev ertw/alpine-dev /bin/zsh
