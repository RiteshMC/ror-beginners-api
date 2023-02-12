class Post < ApplicationRecord
  self.table_name = 'post'

  validates :slug, uniqueness: { case_sensitive: false }

end
