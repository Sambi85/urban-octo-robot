require_relative "./recipe.rb"
require_relative "./restaurant.rb"
require_relative "./chef.rb"
require 'pry'

#Recipes
recipe1 = Recipe.new("vegan chili","sweet & spicy")
recipe2 = Recipe.new("hunter's stew", "default sunday special")
recipe3 = Recipe.new("Fish Fry","use for the lunch crowds")

#Restaurants
restaurant1 = Restaurant.new("Sushi_Town",3)
restaurant2 = Restaurant.new("Sarah's",4)
restaurant3 = Restaurant.new("Dive Bar & Grille",3)


#Chef
chef1 = Chef.new(recipe1,restaurant1)
chef2 = Chef.new(recipe2,restaurant2)
chef3 = Chef.new(recipe3,restaurant3)


#### DO NOT REMOVE #####
binding.pry
'wwwwwwww'