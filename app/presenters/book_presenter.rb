class BookPresenter

  def initialize(book)
    @book = book
  end

  def show_author_name
    @book.author.name
  end

end