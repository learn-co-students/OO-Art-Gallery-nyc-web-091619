class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

#Intance Methods
  def paintings
    Painting.all.select {|painting| painting.artist == self }
  end

  def galleries
    Painting.all.select {|painting| painting.gallery}
  end

  def cities
    galleries.map {|painting| painting.city}
  end



#Class Methods

  def self.create_painting(title, price, gallery)
    Painting.new(title, price, gallery)
  end

  def self.total_experience
    self.all.map {|artist| artist.years_experience}.reduce{|sum, years| sum + years}
  end

  # def self.most_prolific


end #End of Artist class





  # * `Artist#paintings`
  #   * Returns an `array` all the paintings by an artist

  # * `Artist#galleries`
  #   * Returns an `array` of all the galleries that an artist has paintings in

  # * `Artist#cities`
  #   * Return an `array` of all cities that an artist has paintings in

  # * `Artist#create_painting`
  #   * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

    # * `Artist.total_experience`
    # * Returns an `integer` that is the total years of experience of all artists

  # * `Artist.most_prolific`
  #   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.