# keep track of spells
# turn responses into objects
# save all drinks created
class Spell 
    attr_accessor :name, :spell_id, :effect , :type
    @@all = []

    def initialize(name:, spell_id:, effect:, type:)
        @name = name
        @spell_id = spell_id
        @type = type
        @effect = effect
        @@all << self
    end

    def self.all
        @@all
    end
     
    

end