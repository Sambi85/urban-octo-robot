class Recipe #belongs to
    attr_accessor :description  #description of the recipe can be updated
    attr_reader :name #name of the recipe cannot be changed

    @@all = [] ## class variable 

    def initialize(name,description)
        @name = name
        @description = description
        @@all << self   ### When an instances is initialized, this will save it's self to a class variable.
    end

    def self.all ### This is a class method, lists all the istances that have been initialized in the class.
        @@all    ### you need this method to access the class var @@all, which is needed for class methods.
    end


    
    def get_restaurants ## helper
        Chef.all.select{|chef|chef.recipe== self}
    end  

    def recipe ## passedrec
        self.get_restaurants.map{|chef|chef.restaurant.name}
    end
  

end