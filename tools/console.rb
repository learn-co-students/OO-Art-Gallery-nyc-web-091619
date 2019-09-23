require_relative '../config/environment.rb'

a1 = Artist.new("jon",10)
a2 = Artist.new("kim",15)
a3 = Artist.new("sofie",20)

g1 = Gallery.new("MOMA", "NYC")
g2 = Gallery.new("MFA", "BOS")
g3 = Gallery.new("Louvre", "Paris")

p1 = Painting.new("Mona Lisa", 10000000, a1, g3)
p2 = Painting.new("Apple painting", 20000, a2, g1)
p3 = Painting.new("bowl", 40, a3, g2)
p4 = Painting.new("sky", 500000, a1, g1)



binding.pry

puts "Bob Ross rules."
