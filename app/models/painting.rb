class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
  end


  def self.total_price
    self.all.map{|paint| paint.price}.reduce{|sum, price| sum + price}
  end


end


# * `Painting.all`
# * Returns an `array` of all the paintings

# * `Painting.total_price`
# * Returns an `integer` that is the total price of all paintings