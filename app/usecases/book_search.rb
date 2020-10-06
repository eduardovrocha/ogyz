class BookSearch

  def initialize(params)
    @page = params[:page] || 1
    @per_page = params[:per_page] || 10
    @query = params[:query]
  end

  def call
    puts ">>> {query: #{@query}, per_page: #{@per_page}, page: #{@page}}"
    books = Book.paginate(page: 1)
    return books
  rescue ActiveRecord::RecordNotFound

  end

end