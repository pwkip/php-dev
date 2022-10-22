start:
	docker-compose up -d --build
stop:  
	docker-compose stop
deploy:
	chmod +x deploy.sh
	./deploy.sh