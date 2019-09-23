class Artist

    @@all = []

    attr_reader :name, :years_experience

    def initialize(name, years_experience)
      @name = name
      @years_experience = years_experience
      @@all << self 
    end

      def self.all 
        @@all 
    end 

    def my_paintings
      Painting.all.select do |painting|
      painting.artist == self 
      end 
    end 

    def my_galleries 
      my_paintings.map do |painting|
        painting.gallery 
      end 
    end 

    def cities 
      my_galleries.map do |gallery|
        gallery.city 
      end 
    end 

  
    def self.total_experience 
      all_years = self.all.map do |artist|
                  artist.years_experience
                  end 
      all_years.reduce(0) do |sum, n|
        sum + n 
      end 
    end  

    def self.most_prolific 
      self.all.max_by do |artist|
        artist.my_paintings.length / artist.years_experience 
      end
    end 



    def create_painting(title, price, gallery)
      Painting.new(title, price, self, gallery)
    end






end
