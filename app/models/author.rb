class Author < ApplicationRecord
  has_many :books

  self.per_page = 10

end
