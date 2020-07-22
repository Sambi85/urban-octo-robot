class Restaurant
    attr_accessor :name, :star_rating
    
    @@all = []

    def initialize(name, star_rating)
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end
    
end