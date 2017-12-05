Book.destroy_all

projects = []

10.times do |index|
  projects << Book.create!(title: Faker::Book.title, description: Faker::Lorem.sentence, author: Faker::Book.author, contributor: Faker::RickAndMorty.character, book_image: 'google.com', publisher: Faker::Book.publisher, pages: Faker::Number.between(1, 100), amazon_product_url: Faker::Internet.ip_v4_address, price: Faker::Commerce.price)
end
