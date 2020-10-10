class BookSearch

  def initialize(params)
    @params = params
  end

  def call
    puts ">>> {query: #{@params}"
    books = Book.all.ransack(title_or_description_cont: @params[:query]).result
                .paginate(page: 1, per_page: 5)
    puts books.count
    return books
  rescue ActiveRecord::RecordNotFound

  end

end