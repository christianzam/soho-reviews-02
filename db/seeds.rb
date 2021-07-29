puts "cleaning database...."
puts "..."
puts "."
Worker.destroy_all

puts "database clean"
puts ""
puts "creating database...."
puts ""
10.times do
  worker = Worker.create!(
    name: Faker::Superhero.name,
    address: Faker::Address.street_address,
    description: Faker::Quote.yoda,
    price: rand(20..45),
    rating: rand(1..5),
    user_id: rand(1..11)
  )
  puts "Worker #{ worker.id } has been created"
end
puts ""
puts "All done!"