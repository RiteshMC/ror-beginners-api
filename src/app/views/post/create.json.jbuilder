json.result 'success'
json.created true
json.data do
  json.partial! 'post/post', post: @post
end
