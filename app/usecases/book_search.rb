class BookSearch

  def initialize(query_search, per_page)
    @query_search = query_search[:value]
    @per_page = per_page || 1
  end

  def call
    puts ">>> {query: #{@query_search}"
    if (@query_search.empty?)
      return Book.all
    end
    books = Book.all.ransack(title_or_description_cont: @query_search).result
                .paginate(page: 1, per_page: 5)
    books
  rescue ActiveRecord::RecordNotFound

  end

end