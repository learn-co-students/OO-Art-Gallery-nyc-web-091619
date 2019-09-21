require_relative '../config/environment.rb'

art1 = Artist.new("Joe", 10)
art2 = Artist.new("Steve", 154342)
art3 = Artist.new("Alex", 400)
gal1 = Gallery.new("G1", "London")
gal2 = Gallery.new("G2", "Paris")
gal3 = Gallery.new("G3", "New York")
ptng1 = Painting.new(art1, gal1, "Mona Lisa", 300)
ptng2 = Painting.new(art1, gal3, "Bears", 100000)
ptng3 = Painting.new(art2, gal2, "Cool Painting", 30)
ptng4 = Painting.new(art3, gal2, "Nice Drawing", 690)
ptng5 = Painting.new(art3, gal1, "PP", 8500)
ptng6 = Painting.new(art3, gal3, "Yo", 4100)



binding.pry

puts "Bob Ross rules."
