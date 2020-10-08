# json.array! @books, partial: "books/book", as: :book
json.array! @books do |book|
  json.id book.id
  json.title book.title
  json.description book.description
  json.image book.image
  json.author book.author.name
end