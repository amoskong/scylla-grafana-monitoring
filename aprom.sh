
sudo service docker start
sudo docker start agraf

sudo docker kill aprom
sudo docker rm aprom

sudo docker run -d -v ~/pdata/$1/data/:/prometheus -v $PWD/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml:Z -p 9090:9090 --name aprom prom/prometheus:v1.0.0

#sudo docker kill aprom;sudo docker rm aprom;sudo docker run -d -v ~/read_data2/read2_1.2/data/:/prometheus -v $PWD/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml:Z -p 9090:9090 --name aprom prom/prometheus:v1.0.0
