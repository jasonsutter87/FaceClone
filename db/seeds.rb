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


User.create(
  name: "Jason Sutter",
  username: "Jason.Sutter",
  bio: 'I like Tacos',
  job: 'Developer',
  relationship_status: 'Single',
  location: 'Granite Bay',
  email: 'jasonsutter87@gmail.com',
  password: '123456'
 )



Image.create(
  user_id: 101,
  url: "https://scontent.fsac1-2.fna.fbcdn.net/v/t1.0-9/37618206_10156746393016661_5602367989581086720_n.jpg?_nc_cat=109&oh=599d9f1fe8fa3b9991bf686b247bd42d&oe=5C57FE8D",
  imageable_id: User.last.id,
  imageable_type: "User"
)
