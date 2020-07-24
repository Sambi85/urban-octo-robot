Seems you've gone all the way and built out a many to many and your code looks good. Continue to improve your method naming. for example: `restaurant.get_recipes` doesn't actually return recipes, it returns `chef` instances so a better name would be `restaurant.chefs`

However, it seems you have a handle on things. Focus on Active Record for now.