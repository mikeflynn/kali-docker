help:		## Show this help message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

up:		## Start kali
	docker-compose up -d

rebuild:	## Build kali
	docker-compose up --build -d

shell:          ## Open shell on kali
	docker-compose exec kali bash

stop:		## Stop kali
	@echo "Stopping instances."
	docker-compose stop
	@echo "Done."

clean:		## Stop and remove kali containers
	docker-compose down
	@echo "Done."
