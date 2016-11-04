curl -XPOST -i http://localhost:3001/api/dashboards/db --data-binary @./scylla-dash-io-per-server.json -H "Content-Type: application/json"
curl -XPOST -i http://localhost:3001/api/dashboards/db --data-binary @./scylla-dash.json -H "Content-Type: application/json"
curl -XPOST -i http://localhost:3001/api/dashboards/db --data-binary @./scylla-dash-per-server.json -H "Content-Type: application/json"
#curl -XPOST -i http://localhost:3000/api/dashboards/db --data-binary @./scylla-data-source.json -H "Content-Type: application/json"
