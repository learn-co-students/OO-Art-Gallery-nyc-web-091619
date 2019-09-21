class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    sum = 0
    total = self.all.map do |painting|
      painting.price
    end
    sum = total.inject { |sum, n| sum + n }  
  end

end
 