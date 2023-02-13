class Post < ApplicationRecord
  self.table_name = 'post'

  belongs_to :author, class_name: 'User'

  validates :slug, uniqueness: { case_sensitive: false }

end
