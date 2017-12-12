FactoryBot.define do

  factory :user do
    email('aaron@gmail.com')
    password('password')
  end

  # factory (:admin, class: User) do
  #   email('aaron@gmail.com')
  #   password('password')
  #   admin(true)
  # end
end
