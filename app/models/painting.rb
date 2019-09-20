class Painting

  attr_reader :title, :price

  @@all = []
  
  # Class methods
  def initialize(title, price)
    @title = title
    @price = price
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map{|paint| paint.price}.reduce{|sum, price| sum + price}
  end

  # Instance methods

end
