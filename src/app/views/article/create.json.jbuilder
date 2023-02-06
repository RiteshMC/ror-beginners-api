json.result 'success'
json.created true
json.data do
  json.partial! 'article/article', article: @article
end
