up:
	docker-compose up -d
	box server start

taffy:
	@echo Downloading Taffy...
	@curl -L -o www/taffy.zip https://github.com/atuttle/Taffy/archive/master.zip
	@cd www && unzip -q taffy.zip && rm -f taffy.zip && mv Taffy-master taffy && cd ..
	@echo Taffy is ready to REST!

clean:
	rm -rf www/taffy
	box server stop
	yes | box server forget

down:
	box server stop
	docker-compose down
