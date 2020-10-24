@echo off
call mvn clean package
call docker build -t com.park/ParkingLot .
call docker rm -f ParkingLot
call docker run -d -p 9080:9080 -p 9443:9443 --name ParkingLot com.park/ParkingLot