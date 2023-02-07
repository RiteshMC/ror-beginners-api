## Users

Create
```
curl --location --request POST 'localhost:3002/users' \
--header 'Content-Type: application/json' \
--data-raw '{
    "first_name": "test 1",
    "last_name": "test 1",
    "first_name_kana": "カタ",
    "last_name_kana": "カタ",
    "email": "test1@test.com",
    "password": "Test1234",
    "gender": "male",
    "birth_date": "1989-09-09",
    "height": 499,
    "weight": 50,
    "test":"test"
}'
```

Auth Login [retrieve token]
```
curl --location --request POST 'localhost:3002/login' \
--header 'Content-Type: application/json' \
--data-raw '{
    "email": "test1@test.com",
    "password": "Test1234"
}'
```


Get By ID [with token]
```
curl --location --request GET 'localhost:3002/users/self' \
--header 'token: f89cb866-a7aa-49d1-af9e-d74bf57e86fa'
```

Update
```
curl --location --request PUT 'localhost:3002/users/self' \
--header 'token: f89cb866-a7aa-49d1-af9e-d74bf57e86fa' \
--header 'Content-Type: application/json' \
--data-raw '{
"first_name": "test 112321323",
"last_name": "test 112321312",
"first_name_kana": "カタカタカタ",
"birth_date": "1980-09-09"
}'
```

Delete
```
curl --location --request DELETE 'localhost:3002/users/self' \
--header 'token: f89cb866-a7aa-49d1-af9e-d74bf57e86fa'
```