require 'faker'

def em string
  puts "*" * 50
  puts "   " + string
  puts "*" * 50
end

def get_long_content
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote +
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote +
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote
end

def get_short_content
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote
end

def get_random_quote
  case [*1..6].sample
    when 1 then Faker::HitchhikersGuideToTheGalaxy.quote
    when 2 then Faker::HeyArnold.quote
    when 3 then Faker::HowIMetYourMother.quote
    when 4 then Faker::Movie.quote
    when 5 then Faker::Seinfeld.quote
    when 6 then Faker::Dune.quote
  end
end

def get_profile_image
  "http://placebeard.it/#{[*145..155].sample}/#{[*145..155].sample}"
end

em "Creating Users"

User.create!(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")

em "User created with test@test.com & asdfasdf"

5.times do |i|
 user = User.create!(email: "test#{i}@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
 puts user.inspect
end
user_count = User.count
em "Created #{user_count} users"

em "Creating random things"

5.times do |i|
  
  rando = RandomThing.create!(top: rand(0..600),
                              left: rand(0..400),
                              height: rand(25..200),
                              width: rand(25..200),
                              color: ["red",'green','blue','yellow'].sample,
                              rad:rand(0..100),
                              )
  puts rando.inspect
end

em "Creating comments"

20.times do |i|
  comment = Comment.create!(user_id: rand(1..user_count),
                            body: get_short_content)
  puts comment.inspect

end












