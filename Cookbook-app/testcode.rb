require_relative 'cookbook'


mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["Tortilla", "Bean", "Cheese"], ["Heat beans", "Place beans in tortilla", "Sprinkle cheese on top", "Roll up"])


puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]


mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito"
burrito.ingredients = ["Tortilla", "Tomatoes"]
burrito.steps = ["Heat tomatoes", "Place tomatoes in tortilla", "Roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]
p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)# Added a recipe to the collection: Veggie Burrito
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]

mex_cuisine.recipe_titles # Veggie Burrito
mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "bean"]

burrito.print_recipe

taco = Recipe.new("Chicken Fajita", ["Tortilla", "Grilled chicken", "Fajita seasoning"], ["Season chicken and leave in fridge overnight", "Grill for 5 minutes on each side", "Slice chicken and place in tortilla"])
mex_cuisine.add_recipe(taco)

mex_cuisine.print_cookbook
mex_cuisine.search
mex_cuisine.remove
