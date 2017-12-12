Book.destroy_all
User.destroy_all
Account.destroy_all

10.times do |index|
  Book.create!(title: Faker::Book.title, description: Faker::Lorem.sentence, author: Faker::Book.author, contributor: Faker::RickAndMorty.character, image: URI.parse(Faker::LoremPixel.image), publisher: Faker::Book.publisher, pages: Faker::Number.between(1, 100), amazon_product_url: Faker::Internet.ip_v4_address, price: Faker::Commerce.price)
end

user = User.new(email: 'user@user.com', password: '111111')
user.save
Account.create(:user_id => user.id)

user = User.new(email: 'admin@admin.com', password: '111111', admin: true)
user.save
Account.create(:user_id => user.id)

# Book.create({
#   :id => 52,
#   :book_image => Book.new("#{Rails.root}/path/to/somefile.jpg"),
#   :product_id => 52
# })
