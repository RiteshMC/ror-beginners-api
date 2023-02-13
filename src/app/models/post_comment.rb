class PostComment < ApplicationRecord
  self.table_name = 'post_comment'

  belongs_to :post, class_name: 'Post'
end
