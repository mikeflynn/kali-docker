help:		## Show this help message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

up:		## Start kali
	@echo "Starting api instance on localhost:3000"
	docker-compose up
	@echo "Instance has started and running in background."

build:		## Build kali
	@echo "Starting api instance on localhost:3000"
	docker-compose up --build
	@echo "Instance has started and running in background."

stop:		## Stop kali
	@echo "Stopping instances."
	docker-compose stop
	@echo "Exited."

clean:		## Stop and remove kali containers
	docker-compose down
	@echo "Done."