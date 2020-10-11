class Effect
    attr_accesor :name, :spells
     @@all = []

    def initialize
    @name = name
    @spells = []
    end

    def self.all
        @@all
    end

    def self.find_by_effect(effect)
        @@all.find { |i| i.name == effect}
    end

end