class Person

	# attr_reader :name, :age
	# attr_writer :name, :age
	attr_accessor :name, :age
	@@population = []

	def initialize(name, age)
		@age = age
		@name = name
		@@population << self
	end
	# Getter method or Reader method
	# Age
	#def age
		# @age
	# end
	def self.population
		@@population
	end
	#Setter method for @age
	# def age=(other)
	# 	@age = other
	# end

	#Reader method
	# def name 
		# @name
	# end

	# def name=(other)
	# 	@name = other
	# end

end