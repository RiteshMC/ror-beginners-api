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

```shell
# this starts the nginx server 
$ make start
```

Delete the Docker image / container.

```shell
$ make clean
```

### Table & master data preparation

```shell
$ make gobash
> rails db:create
> rails db:migrate
```

## At this point you should actually be able to curl the API

```
url : http://localhost:{WEB_PORT}
```