json.result 'success'
json.updated true
json.data do
  json.partial! 'article/article', article: @article
end
