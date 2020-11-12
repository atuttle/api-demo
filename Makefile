up:
	docker-compose up -d
	open http://localhost:4040

taffy:
	@echo Downloading Taffy...
	@curl -L -o www/taffy.zip https://github.com/atuttle/Taffy/archive/master.zip
	@cd www && unzip -q taffy.zip && rm -f taffy.zip && mv Taffy-master taffy && cd ..
	@echo Taffy is ready to REST!

clean:
	rm -rf www/taffy

down:
	docker-compose down

adminer:
	open http://localhost:8080/?server=demodb&username=root
