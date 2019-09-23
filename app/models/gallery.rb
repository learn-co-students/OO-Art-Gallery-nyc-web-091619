class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end

  def self.all 
    @@all
  end 

  def my_paintings 
    Painting.all.select do |painting|
      painting.gallery == self 
    end 
  end

  def artists
    my_paintings.map do |painting|
      painting.artist
    end 
  end 

  def artist_names 
      artists.map do |painting|
      painting.name
    end
  end 

  def most_expensive_painting
    my_paintings.max do |a, b|
      a.price <=> b.price 
      end 
    end 
 




end
