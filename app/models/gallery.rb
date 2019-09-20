class Gallery

  attr_reader :name, :city

  @@all = []
  # Class methods
  def initialize(name, city)
    @name = name
    @city = city
  end

  def self.all
    @@all
  end

end
