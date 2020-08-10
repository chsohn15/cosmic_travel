class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to :planet
    validates :name, uniqueness: true

    def scientist_name= (name)
        self.scientist = Scientist.find_or_create_by(name:name)
    end

    def scientist_name
        self.scientist ? self.scientist.name : nil
    end

    def planet_name= (name)
        self.planet = Planet.find_or_create_by(name: name)
    end

    def planet_name
        self.planet ? self.planet.name : nil
    end

    
end
