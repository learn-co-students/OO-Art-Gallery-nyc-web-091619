require_relative '../config/environment.rb'


a1 = Artist.new("Jim", 5)
a2 = Artist.new("Tim", 6)
a3 = Artist.new("Jimothy", 9)
a4 = Artist.new("Rip", 2)

g1 = Gallery.new("met", "nyc")
g2 = Gallery.new("jik", "sf")
g3 = Gallery.new("kit", "sf")
g4 = Gallery.new("let", "sf")
g5 = Gallery.new("bet", "chicago")

a1.create_painting("Jeggings", 1200, g1)
a2.create_painting("Jeggings", 6510, g2)
a3.create_painting("Jeggings", 4200, g3)
a4.create_painting("Jeggings", 2600, g4)
a1.create_painting("Jeggings", 1060, g5)
a2.create_painting("Jeggings", 1340, g5)
a1.create_painting("Jeggings", 12000, g2)








binding.pry

puts "Bob Ross rules."
