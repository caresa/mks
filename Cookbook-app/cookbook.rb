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
			puts "These are the ingredients for "" #{x.title} : #{x.ingredients}"
		end
	end
	def print_cookbook
		@recipes.each do |x|
			puts "#{x.title}"
			puts "Ingredients: " 
			puts x.ingredients.map.with_index(1){|x, i| i.to_s + ". " + x}
			puts "Steps: "
			puts x.steps.map.with_index(1){|x, i| i.to_s + ". " + x}
		end
	end
	def search
		puts "Please enter the title of the recipe you want to search for"
		userInput = gets.chomp
		 @recipes.each do |x|
		 	if userInput == x.title 
		 		puts "Here is the recipe for #{x.title}."
		 		puts "Ingredients: ", x.ingredients.map.with_index(1){|x, i| i.to_s + ". " + x}
		 		puts "Steps: ", x.steps.map.with_index(1){|x, i| i.to_s + ". " + x}
		 		return
		 	end
		 end
 		puts "#{userInput} is not in the Cookbook"
	end
	def remove
		puts "Enter the title of the recipe you would like to delete"
		userInput = gets.chomp
		@recipes.delete_if { |x| x.title == userInput}
		puts "You deleted #{userInput}"
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












