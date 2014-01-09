smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

#---->create a class called Blender
class Blender

	def initialize(smoothie_ingredients)
		@smoothie_ingredients = smoothie_ingredients
	end

#---->FOR SAFETY'S SAKE When you create a new blender by default it should be off.
	def blender_default
		puts 'Blender is currently OFF'
	end

	def blender_off
		puts 'Blender is now turned OFF'
	end

	#---->Give the blender an on and off switch and only
	#---->allow the blender to function when it's on.
	def blender_state(state_option) 
		puts "#{blender_default}"
		puts "Would you like to turn your blender ON? [Yes/No]"
		dec = gets.chomp.downcase
	end

	def prompt_n_chomp(state_option)
		dec = blender_state(state_option)

		until dec == "yes" || dec == "no"
			puts "Please select from the choices"
			dec = blender_state(state_option)
		end
		dec 
	end
#---->It should have a method that takes an 
#---->array of ingredients and returns a mixed string of characters.
	def blend (smoothie_ingredients)
	#first thing I need to do is be able to print out all ingredients (ONLY). 
	ingredients = smoothie_ingredients.keys
	#ingredient should print out keys only
	all_in_blender = ingredients.join
	#all_in_blender should convert the array into a string
	blended1 = all_in_blender.split("")
	#blended1 should take each character of the string and then putting it into a 
	#an array
	blended2 = blended1.shuffle.join
	#blended2 shuffles the array and then makes it into one string
	finished_blend = blended2.delete(' ')
	#finished_blend should take the white spaces out and put them all together like a
	#blended smoothie
	end

	def start
		i = 1
		while i != 0
			smoothie_ingredients = @smoothie_ingredients
			state_option = ['yes','no']
			choice = prompt_n_chomp(state_option)
			ingredients = blend(smoothie_ingredients)
			if choice == "yes"
				puts ingredients
				puts ''
				puts 'Enjoy your weird drink!'
				puts ''
				puts blender_off
				puts "Would you like to make more? [Yes/No]"
				c_again = gets.chomp.downcase
					if c_again == 'no'
						i = 0
			end
			else choice =="no"
				puts "Why did you even talk to me?"
				i = 0
			end
		end
		puts "Yeah, I'm a blender talking to you. Have a nice day."
		puts "#{blender_off}"
	end

#---->Blend the the smoothie array
end

blend = Blender.new(smoothie_ingredients)
blend.start()