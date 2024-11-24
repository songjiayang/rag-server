build:
	docker build -t songjiayang.com/rea-server:0.1.0 .
start:
	docker-compose up -d 
stop:
	docker-compose down