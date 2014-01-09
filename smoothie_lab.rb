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

#Here's what I want to do. I want to create a function that can blend ALL
#smoothie ingredient. The output should be that the string and characters should be 
#all jumbled up.

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
finished_blend = blended2.gsub(' ','')
#finished_blend should take the white spaces out and put them all together like a
#blended smoothie
end
p "#{blend(smoothie_ingredients)}"