class Artist

  attr_reader :name, :years_experience

  @@all = []

  # Class methods

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map.{|artist| artist.years_experience}.reduce{|sum, years| sum + years}
  end

  def self.most_prolific
    # Of all artists
    
    self.all
  end

  # Instance methods
  def galleries
    
  end

  def cities

  end

end
