## Articles

List all
```
curl --location --request GET 'localhost:3002/articles'
```

Get By ID
```
curl --location --request GET 'localhost:3002/articles/11'
```

Create
```
curl --location --request POST 'localhost:3002/articles' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "test 1",
    "content": "content 1r",
    "status":1
}'
```

Update
```
curl --location --request PUT 'localhost:3002/articles/11' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "test 111112",
    "content": "content 1r1111",
    "status": 0
}'
```

Delete
```
curl --location --request DELETE 'localhost:3002/articles/10'
```