#!/bin/sh

if [ -f .env ]; then
    source .env
fi

echo Terminating current/old Docker processes...
docker compose rm -fs

echo Building Docker containers and launching YAQLuator...
docker compose up --build -d

echo Open web browser to http://localhost:${YAQLUATOR_HTTP_PORT:-80}/...
