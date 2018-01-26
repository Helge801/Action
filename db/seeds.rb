def em output
  puts "*" * 200
  puts "   " + output
  puts "*" * 200
end

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
