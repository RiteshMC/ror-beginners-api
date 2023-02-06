# frozen_string_literal: true

json.result 'success'
json.metadata do
  # json.page @pagy.page
  # json.per_page @pagy.items
  # json.page_count @pagy.pages
  # json.total_count @pagy.count
end
json.data do
  json.array! @articles.each do |article|
    json.id article.id
    json.title article.title
    json.content article.content
  end
end
