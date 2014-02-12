class Cookbook
	attr_accessor :title
	attr_accessor :recipes

	def initialize(title)
		@title = title
		@ary_name = []
		@recipe_ingredients ={}
		@recipe_steps ={}
		@ary_ingredients = []
		@ary_steps = []

		@length = 0
	end

	def add_recipe(recipe)
		@recipe_ingredients[recipe.title] = recipe.ingredients
		@recipe_steps[recipe.title] = recipe.steps
		@ary_name << recipe.title
		@ary_ingredients << recipe.ingredients
		@ary_steps << recipe.steps
		@length += 1
		puts "Added #{recipe.title} to the collection."
	end

	def recipe_titles
		print @recipe_info.keys
	end

	def recipe_ingredients
		@recipe_info.each {|recipe, ingredients| puts "The ingredients of #{recipe} are: #{ingredients}"}
	end

	def print_recipe(recipe_name)
		puts "\n #{recipe_name.to_s}:"
		puts "\n Ingredients: " 
		@recipe_ingredients[recipe_name].each {|ingredient| puts ingredient}
		puts "\n Steps: "
		@recipe_steps[recipe_name].each{|step| puts step}
	end

	def print_cookbook
	 	#@length = @recipe_info.length
	 	count = 0
	 	while count < @length
	 		puts "\n#{@ary_name[count]}:"
	 		puts "Ingredients: #{@ary_ingredients[count]}"
	 		puts "Steps: "
	 		(0...100).each do |num| 
	 			if @ary_steps[count][num] != nil
	 				puts "#{num + 1}. #{@ary_steps[count][num]}"
	 			end
	 		end
			count += 1
	 	end
	 end

	 def ingredient_check
	 	puts "What ingredients do you have?"
	 	@in_stock = gets.chomp.delete(",").split(" ")
	 	@in_stock.sort!
	 	@recipe_ingredients.each do |key, value| 
	 		(@in_stock & value).each{|ingredient| value.delete(ingredient)}
	 		if value.empty?
	 	 		puts "You have the ingredients to make: #{key}!"
	 		end
	 	end
	 end

	 def random_recipe
	 	rando_number = rand(0...@ary_name.length)
	 	puts "#{@ary_name[rando_number]}:\n"
	 	puts "Ingredients: #{@ary_ingredients[rando_number]} \n"
	 	puts "Steps: "
	 	(0...100).each do |num| 
	 			if @ary_steps[rando_number][num] != nil
	 				puts "#{num + 1}. #{@ary_steps[rando_number][num]}"
	 			end
	 		end

	 end



end



class Recipe
	attr_accessor :title
	attr_writer :title
	attr_accessor :ingredients
	attr_accessor :steps


	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end



end