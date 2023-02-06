Migration model

Url : https://guides.rubyonrails.org/v3.2/migrations.html

### Supported Types
Active Record supports the following database column types:

:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:primary_key
:string
:text
:time
:timestamp


### Commands
```
> Add new model
$ rails generate model User email:string password_digest:string

> Add new column to existing table
$ rails generate migration AddTokenToUser token:string

> Migrate
$ rails db:migrate
```