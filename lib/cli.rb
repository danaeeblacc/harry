## interactions with user
# contain all of the gets and puts 
# control the flow of the program

class CLI 
    attr_accessor :effect
    def start 
        puts ""
        puts "Welcome to the Hogwards Witchcraft and Wizadry Spell-casting Tournament!"
        puts ""
        puts " Search your desired spells by entering an effect"
        puts ""
        @effect = gets.strip.downcase
        puts ""
        API.fetch_spell(@effect)
        puts ""
        spell = Spell.all
        print_spell(spell)
        puts ""
        puts "Type a number to see more details"
        puts " OR type effect to search another spell effect"
        puts " OR type 'list' to see the list again"
        puts "OR type 'exit' to exit"
        puts ""
        inp = gets.strip.downcase
        while inp != 'exit' do
            if inp == 'list'
                print_spell(spell)
                inp = gets.strip.downcase
                #binding.pry
            elsif inp == "exit"
                puts "goodbye"
            else
                spe = Spell.all[inp.to_i-1]
                puts "_______________________________"
                puts spe.name
                puts spe.effect
                puts "_______________________________"
                inp = gets.strip.downcase
                #spell = Spell.find_by_effect(@effect)[inp.to_i-1]
            end
            puts "Goodbye!"
            end
    end

    def print_spell(spe)
        puts ""
        puts "Here are your spell, hexes, incantations, and charms options by #{@effect} "
        puts ""
        spe.each.with_index(1) do | d, i |
            puts "#{i}. #{d.name}"
        end
    end

    # def find_by_effect(effect)
    #     Spell.all.find do |e|
    #         binding.pry
    #     end

        
    # end
end
