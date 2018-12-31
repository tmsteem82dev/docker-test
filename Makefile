build-app-latest:
	docker build -t friendlyhello:latest . 
run-app:
	@echo $(version)
	docker run -p 5000:5000 friendlyhello:$(version)

compose-app:
	@echo running docker-compose to start app
	docker-compose up --build