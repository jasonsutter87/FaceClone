require 'faker'


100.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Name.name.split(' ').join('')+ rand(100).to_s,
    bio: Faker::Lorem.paragraph(2, true),
    job: Faker::Job.title,
    relationship_status: ["Single", "It's Complicated", "Taken", "Married", "Table For One, Drinks For Two" ].sample,
    location: [Faker::RickAndMorty.location, Faker::Address.city].sample,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password
   )
end


75.times do
  Post.create(
    user_id: rand(75),
    text: Faker::Lorem.paragraph(2)
  )
end
