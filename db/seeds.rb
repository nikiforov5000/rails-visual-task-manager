puts "Clean db"
# Activity.destroy_all
DayPack.destroy_all
Task.destroy_all
puts "All deleted"
day_pack1 = DayPack.create(title: "My first daypack")
running = Task.new(name:"morning running", duration: 45)
running.day_pack = day_pack1
running.save!

reading = Task.new(name:"Investments reading", duration: 90)
reading.day_pack = day_pack1
reading.save!

puts "Seed complete"