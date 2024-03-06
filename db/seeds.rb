100.times do
    post = Post.new(
      title: Faker::Lorem.sentence(word_count: 3),
      body: Faker::Lorem.paragraph,
      published: Faker::Boolean.boolean
    )
    post.save!
end