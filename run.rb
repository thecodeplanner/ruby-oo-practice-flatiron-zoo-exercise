require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronxzoo = Zoo.new("bronx zoo", "ny")
wildzoo = Zoo.new("wild", "jersey")

kobe = Animal.new("dog", 45, "kobe", bronxzoo)
spunk = Animal.new("skunk", 15, "spunk", bronxzoo)
larry = Animal.new("lizard", 5, "larry", wildzoo)

p Zoo.find_by_location("ny")

# p Animal.all
# p Animal.find_by_species("skunk")



# p kobe
# p bronxzoo