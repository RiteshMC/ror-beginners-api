json.result 'success'
json.updated true
json.data do
  json.partial! 'post/post', post: @post
end
