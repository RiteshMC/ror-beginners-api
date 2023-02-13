# frozen_string_literal: true

json.result 'success'
json.data do
  json.partial! 'post/post', post: @post
end
