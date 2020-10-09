# keep track of spells
# turn responses into objects
# save all drinks created
class Spell 
    attr_accessor :name, :spell_id
    @@all = []

    def initialize(name:, spell_id:)
        @name = name
        @spell_id = @spell_id
        @@all << self
    end

    def self.all
        @@all
    end
     
end