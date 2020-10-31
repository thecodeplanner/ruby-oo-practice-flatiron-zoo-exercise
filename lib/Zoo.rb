class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        Zoo.all << self 
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select { |ani| ani.zoo == self}
    end

    def animal_species
        self.animals.map {|ani| ani.species}.uniq
    end

    def find_by_species(species)
        self.animals.select {|spec| spec.species == species}
    end

    def animal_nicknames
        self.animals.map {|ani| ani.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select {|zoo| zoo.location == location}
    end

end
