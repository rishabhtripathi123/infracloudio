docker run -d --name csvserver infracloudio/csvserver:latest
docker ps
docker rm csvserver
vi gencsv.sh
chmod +x gencsv.sh
./gencsv.sh 2 8
docker run -d --name csvserver -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
docker ps
docker exec -it csvserver /bin/sh
netstat -tuln
exit
docker stop csvserver
docker rm csvserver
docker run -d --name csvserver -e CSVSERVER_BORDER=Orange -p 9393:9300 -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
curl  localhost:9393
