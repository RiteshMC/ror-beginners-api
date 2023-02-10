# ROR Beginners API

## System environment

Server Default Timezone : UTC

| Ruby  | Rails | DBMS                 |
|-------|-------|----------------------|
| 3.2.0 | 7.0.2 | MySQL 8.0 [TZ - UTC] |

## Getting Started

## System Requirement version

1. docker 20+
2. docker-compose 1.29+

### Environment file

```shell
$ cp .env.bak .env
$ vi .env

RAILS_ENV=development
MYSQL_PORT=13306
WEB_PORT=3002
#Desired Port Number
```

### Build

List the shells from makefile

```shell
$ make help
```

Create a Docker image and start the container.
```
$ make force-build
$ make start
```

#### 2.2 Creates database,migration and inserts some test data
```shell
#open new terminal and run following commands
$ make webbash
$ rails db:migrate:reset #first time only
```

## At this point you should actually be able to curl the API
```
url : http://localhost:{WEB_PORT}
```


### Some useful commands

#### Everytime, you can start and stop project
```shell
$ make start #when you want to start the project
$ make stop #when you want to stop the project
```

Delete the Docker image / container.
```shell
$ make clean
```

### If there is some changes in migration and seed files
```shell
$ make gobash

# To create a db
> rails db:create

# To drop a db
> rails db:drop

# To run new migrations
> rails db:migrate

# To seed the db
> rails db:seed
```