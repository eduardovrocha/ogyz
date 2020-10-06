class BookFavorite

  def initialize(book_id, user)
    @book_id = book_id
    @user = user
  end

  def call

  rescue ActiveRecord::RecordNotFound
    raise ''
  end

end