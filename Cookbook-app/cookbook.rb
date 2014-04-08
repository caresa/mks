class Cookbook

	attr_accessor :title 
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end
	def add_recipe(recipe)
		@recipes << recipe
		puts "Added a recipe to the collection: #{recipe.title}"
	end
	def recipe_titles
		@recipes.each do |x|
			puts x.title
		end
	end
	def recipe_ingredients
		@recipes.each do |x|
			puts "These are the ingredients for #{x.title} : #{x.ingredients}"
		end
	end
	def print_cookbook
		@recipes.each do |x|
			puts "Recipe: #{x.title}"
			puts "Ingredients: #{x.ingredients.join(",")}"
			puts "Steps: #{x.steps.join(",")}"
		end
	end
end


class Recipe

  attr_accessor :ingredients, :steps, :title

	def initialize(title, ingredients, steps)
		@title = title
		@steps = steps
		@ingredients = ingredients
	end
	def print_recipe
		puts self.title
		puts self.ingredients.join(",")
		puts self.steps.join(",")
	end
	
end












