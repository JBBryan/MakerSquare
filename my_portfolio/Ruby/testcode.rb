require_relative 'cookbook.rb'

mex_cuisine = Cookbook.new("Mexican Food")
burrito = Recipe.new("Bean Burrito", ["beans", "tortilla"], ["heat beans", "put beans in tortilla", "roll tortilla"])
cheese_burrito = Recipe.new("Cheesy Burrito", ["beans", "tortilla", "cheese"], ["heat beans and cheese", "put beans in tortilla", "roll tortilla"])
fish_burrito = Recipe.new("Fish Burrito", ["beans", "tortilla", "cheese", "fish"], ["cook fish", "heat beans and cheese", "put everything in tortilla", "roll tortilla"])


print burrito.title
# mex_cuisine.add_recipe(burrito)
# mex_cuisine.add_recipe(cheese_burrito)
# mex_cuisine.add_recipe(fish_burrito)
# mex_cuisine.random_recipe


#mex_cuisine.recipe_ingredients
#mex_cuisine.print_recipe("Fish Burrito")


# p burrito.ingredients # ["tortilla", "bean", "cheese"]
# p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

# mex_cuisine.title = "Mexican Recipes"
# puts mex_cuisine.title # Mexican Recipes

# burrito.title = "Veggie Burrito"
# burrito.ingredients = ["tortilla", "tomatoes"]
# burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

# p burrito.title # "Veggie Burrito"
# p burrito.ingredients # ["tortilla", "tomatoes"]


#mex.recipes # []
# mex_cuisine.add_recipe(burrito)
# p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]