class Book < ApplicationRecord
  belongs_to :author

  self.per_page = 10

end
