Book.destroy_all

10.times do |index|
  Book.create!(title: Faker::Book.title, description: Faker::Lorem.sentence, author: Faker::Book.author, contributor: Faker::RickAndMorty.character, image: File.new("#{Rails.root}/app/assets/images/rubyist.jpg"), publisher: Faker::Book.publisher, pages: Faker::Number.between(1, 100), amazon_product_url: Faker::Internet.ip_v4_address, price: Faker::Commerce.price)
end

# Book.create({
#   :id => 52,
#   :book_image => Book.new("#{Rails.root}/path/to/somefile.jpg"),
#   :product_id => 52
# })
