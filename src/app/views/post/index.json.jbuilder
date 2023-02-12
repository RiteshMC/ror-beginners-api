# frozen_string_literal: true

json.result 'success'
json.metadata do
  # json.page @pagy.page
  # json.per_page @pagy.items
  # json.page_count @pagy.pages
  # json.total_count @pagy.count
end
json.data do
  json.array! @posts.each do |post|
    json.partial! 'user/user', post:post
  end
end
