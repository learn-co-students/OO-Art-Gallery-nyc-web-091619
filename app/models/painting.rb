class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  # Class methods
  def initialize(artist, title, price, gallery)
    @artist = artist
    @title = title
    @price = price
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map{|paint| paint.price}.reduce{|sum, price| sum + price}
  end

  # Instance methods

end
