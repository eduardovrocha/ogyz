namespace :populate do
  require 'faker'

  desc "TODO"
  task load_author: :environment do
    10.times do
      Author.create!(name: Faker::Movies::LordOfTheRings.character)
    end
  end

  desc "TODO"
  task load_book: :environment do
    93.times do
      Book.create!(title: Faker::Movies::Hobbit.thorins_company,
                   author_id: 1, image: 'https://thumbs.dreamstime.com/z/young-family-little-kids-autumn-park-sunny-day-family-autumn-portrait-portrait-happy-family-four-autumn-day-197874237.jpg',
                   description: Faker::Movies::Hobbit.quote)
    end
  end

end