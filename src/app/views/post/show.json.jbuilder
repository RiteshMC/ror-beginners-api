# frozen_string_literal: true

json.result 'success'
json.data do
  json.partial! 'user/user', post: @post
end
