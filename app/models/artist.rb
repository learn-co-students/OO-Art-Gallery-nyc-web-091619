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

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    #Returns an integer that is the total years of experience of all artists
    sum = 0
    yrs_exp = self.all.map do |artist|
      artist.years_experience
    end
    sum = yrs_exp.inject { |sum, n| sum + n }  
  end

  def self.most_prolific
    #Returns an instance of the artist with the highest amount of paintings per year of experience.
    #get number of paintings for every author
    #get years of experience for chosen author
    # divide by years of experiencd
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end

  end

  def create_painting(title, price, gallery)
    Painting.new(self, gallery, title, price)
  end
end