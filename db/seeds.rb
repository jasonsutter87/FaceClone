require 'faker'

(1..50).each do |num|
  User.create(
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Name.name.split(' ').join('')+ rand(num).to_s,
    bio: Faker::Lorem.paragraph(2, true),
    job: Faker::Job.title,
    relationship_status: ["Single", "It's Complicated", "Taken", "Married", "Table For One, Drinks For Two" ].sample,
    location: [Faker::RickAndMorty.location, Faker::Address.city].sample,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password
   )
  #
  Image.create(
    user_id: num,
    url: "https://randomuser.me/api/portraits/men/#{num}.jpg",
    imageable_id: User.find(num).id,
    imageable_type: "User"
  )

end


(51..100).each do |num|
  User.create(
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Name.name.split(' ').join('')+ rand(num).to_s,
    bio: Faker::Lorem.paragraph(2, true),
    job: Faker::Job.title,
    relationship_status: ["Single", "It's Complicated", "Taken", "Married", "Table For One, Drinks For Two" ].sample,
    location: [Faker::RickAndMorty.location, Faker::Address.city].sample,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password
   )

  Image.create(
    user_id: num,
    url: "https://randomuser.me/api/portraits/women/#{num}.jpg",
    imageable_id: User.find(num).id,
    imageable_type: "User"
  )
end



75.times do
  Post.create(
    user_id: rand(1..75),
    text: Faker::Lorem.paragraph(2)
  )
end


User.create(
  first_name: "Jason",
  last_name: "Sutter",
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
