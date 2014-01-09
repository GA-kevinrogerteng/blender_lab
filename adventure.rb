story_hash = {
"question" => "Welcome to the haunted hotel. What room would you like to go to?",
"room 1" => "you're dead",
"room 2" => { "question" => "You picked a good room. What would you like to do?",
"sleep" => "You're rested for the morning",
"stay up all night" => "You might have anxiety issues." }
}

class Adventure

	def initialize(story_hash)
		@story_hash = story_hash
	end

	def prompt(question, options)
		puts "this is a question" + question
		puts "#{options}"
		res = gets.chomp
	end

	def prompt_n_chomp(question, options)
		res = prompt(question, options)

		until options.include?(res)
			puts 'Your response was invalid'
			res = prompt(question, options)
		end
		res
	end

	def get_options(curr_story_hash)
		curr_story_hash.keys.select {|x| x != "question"}
	end

	def start
		i = 1
		while i != 0
		curr_story_hash = @story_hash
		question = curr_story_hash["question"]
		options = get_options(curr_story_hash)

		until options.nil?
			res = prompt_n_chomp(question, options)

			if curr_story_hash[res].is_a?(Hash)	
				curr_story_hash = curr_story_hash[res]
				question = curr_story_hash["question"]
				options = get_options(curr_story_hash)
			else
				puts curr_story_hash[res]
				options = nil
			end
			puts "Would you like to play again? [YES/NO]"
			again = gets.chomp.downcase
			if again != "yes" || "no"
				puts "Invalid response, please select again"
				
			elsif again == "no"
				i = 0
			end
		end
	end
		puts "END OF STORY"
	end
end

adv = Adventure.new(story_hash)
adv.start()