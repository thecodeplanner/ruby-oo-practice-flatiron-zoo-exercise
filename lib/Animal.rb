class Animal
    attr_accessor :zoo, :weight
    attr_reader :species, :nickname 

    @@all = [] 

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname 
        @zoo = zoo 
        Animal.all << self 
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        Animal.all.find_all { |animal| animal.species == species}
    end

end
