all:start

MYSQL_USER     = welby
MYSQL_PASSWORD = welby
MYSQL_DATABASE = wlb_common

WEBBASH = docker exec -it web.ror-beginners-api bash
DBBASH = docker exec -it db.ror-beginners-api

define HELP
\n
command		|  definition
==================================
>> force-build  	|  builds the docker container.
>> start  	|  starts the docker container.
>> stop   	|  stops the docker container.
>> clean  	|  removes all the temp files, stops the docker and removes the docker images as well.
>> web-bash 	|  enter the Web docker Bash.
>> db-bash 	|  enter the Db docker Bash.
>> rubocop 	|  ruby static code analyzer.
>> rubocop-fix 	|  ruby static code analyzer with autocorrection.
\n
endef
export HELP

help:
	@echo "$$HELP"

force-build:
	docker-compose -f ./docker-compose.yml build

start:
	docker-compose -f ./docker-compose.yml up

stop:
	docker-compose -f ./docker-compose.yml down

clean:
	rm -rf ./tmp
	rm -rf ./app/tmp
	docker-compose -f ./docker-compose.yml down --rmi all

web-bash:
	$(WEBBASH)

db-bash:
	$(DBBASH)


rubocop:
	$(WEBBASH) -c 'rubocop'

rubocop-fix:
	$(WEBBASH) -c 'rubocop -A'