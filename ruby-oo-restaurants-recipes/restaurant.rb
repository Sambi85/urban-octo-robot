
class Restaurant #has many
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

    def get_recipes ## helper
        Chef.all.select{|chef|chef.restaurant== self}
    end

    def recipes #passed
        self.get_recipes.map{|chef|chef.recipe}
    end    


    def self.highest_rated #passed
      self.all.map{|resto|resto.star_rating}.max
    end 

    def self.find_by_name(name) ###passed
        self.all.select{|resto| resto.name == name}
    end

    def recipe_previews ###passed
        self.recipes.map{|recipe|recipe.description[0..14]}
    end 

end