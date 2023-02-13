## Post

Create
```
curl --location --request POST 'localhost:3002/posts' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "test 1",
    "meta_title": "test 1",
    "slug": "some_111slug_21-23212112111",
    "summary": "カタ",
    "content": "test6testom"
}'
```

Get All [with token]
```
curl --location --request GET 'localhost:3002/posts' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd'
```


Get By ID [with token]
```
curl --location --request GET 'localhost:3002/posts/11' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd'
```

Update
```
curl --location --request PUT 'localhost:3002/posts/10' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd' \
--header 'Content-Type: application/json' \
--data-raw '{
    "titl1e": "test 1",
    "content": "test11116testom"
}'
```

Publish
```
curl --location --request PATCH 'localhost:3002/posts/11/publish' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd'
```

UnPublish
```
curl --location --request PATCH 'localhost:3002/posts/11/unpublish' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd'
```

Delete
```
curl --location --request DELETE 'localhost:3002/posts/10' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd'
```

Comment On Post
```
curl --location --request POST 'localhost:3002/posts/11/comment' \
--header 'token: e0c3f668-ee90-4111-912d-38ea2809cabd' \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "test 1",
    "content": "test6testom"
}'
```

