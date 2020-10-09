# handle all API requests
class API
    
    def self.fetch_spell(charm)
        url = "https://www.potterapi.com/v1/spells?key=$2a$10$NMaXOYi4L8I0KRkkeoPr2.B5b2yhx1X2bhFiN8fo4uxMO8XxL8B5a"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        spell = JSON.parse(response)
        spell.each do |d|
            Spell.new(name: d["effect"],spell_id: d["_id"])
        end
    end

end
