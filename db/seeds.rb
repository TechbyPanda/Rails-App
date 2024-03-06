# 100.times do
#     post = Post.new(
#       title: Faker::Lorem.sentence(word_count: 3),
#       body: Faker::Lorem.paragraph,
#       published: Faker::Boolean.boolean
#     )
#     post.save!
# end

100.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alpha(number: 10)
  )
  user.save!(validate: false) # Skip validations to avoid potential errors from missing password
end