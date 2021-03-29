puts "Clean db"
# Activity.destroy_all
DayPack.destroy_all
Task.destroy_all
puts "All deleted"
day_pack1 = DayPack.create(title: "My first daypack")
running = Task.new(name:"morning running", duration: 45)
running.day_pack = day_pack1
running.save!
# sport = Activity.new(type_of: "sport")
# running.activitiy = sport
# sport.save!

puts "Seed complete"