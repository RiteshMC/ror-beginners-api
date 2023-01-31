# frozen_string_literal: true

json.result 'success'
json.data do
  json.partial! 'article/article', article: @article
end