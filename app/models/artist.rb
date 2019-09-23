class Artist

  attr_reader :name, :years_experience

  @@all = []

  # Class methods

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map {|artist| artist.years_experience}.reduce{|sum, years| sum + years}
  end

  def self.most_prolific
    # Of all artists
    art_hash = {}
    Painting.all.each do |painting|
      art_hash[painting.artist] = 0 unless art_hash[painting.artist]
      art_hash[painting.artist] += 1
    end

    art_hash.max_by {|artist, count| count}[0]
  end

  # Instance methods
  def paintings # This pulls all painint OBJECTS
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end


end
