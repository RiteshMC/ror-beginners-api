json.result 'success'
json.updated true
json.data do
  json.partial! 'user/user', user: @user
end
