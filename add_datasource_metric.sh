#!/usr/bin/env bash


DB_IP="$(sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' aprom)"

curl -XPOST -i http://localhost:3000/api/datasources \
     --data-binary '{"name":"prometheus", "type":"prometheus", "url":"'"http://$DB_IP:9090"'", "access":"proxy", "basicAuth":false}' \
     -H "Content-Type: application/json"
curl -XPOST -i http://localhost:3000/api/dashboards/db --data-binary @./sct_json/scylla-dash.json -H "Content-Type: application/json"
curl -XPOST -i http://localhost:3000/api/dashboards/db --data-binary @./sct_json/scylla-dash-per-server.json -H "Content-Type: application/json"
curl -XPOST -i http://localhost:3000/api/dashboards/db --data-binary @./sct_json/scylla-dash-io-per-server.json -H "Content-Type: application/json"
