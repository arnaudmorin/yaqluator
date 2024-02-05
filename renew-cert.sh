docker compose -f /root/yaqluator/docker-compose-renew.yml up
docker compose -f /root/yaqluator/docker-compose.yml exec nginx nginx -s reload
