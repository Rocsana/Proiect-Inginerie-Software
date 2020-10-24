#!/bin/sh
mvn clean package && docker build -t com.park/ParkingLot .
docker rm -f ParkingLot || true && docker run -d -p 9080:9080 -p 9443:9443 --name ParkingLot com.park/ParkingLot