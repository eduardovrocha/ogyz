# json.array! @books, partial: "books/book", as: :book
json.draw @books.draw
json.recordsTotal @books.recordsTotal
json.recordsFiltered @books.recordsFiltered
json.data do
  json.array! @books.data do |book|
    json.id book.id
    json.title book.title
    json.description book.description
    json.image book.image
    # json.author book.author.name
  end
end