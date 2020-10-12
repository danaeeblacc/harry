## interactions with user
# contain all of the gets and puts 
# control the flow of the program

class CLI 
    attr_accessor :effect
    def start 
        puts ""
        puts "Welcome to the Hogwarts Witchcraft and Wizardry Spell Book"
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
            elsif inp == "exit"
                puts "goodbye, well met. See you soon!"
            else
                spe = Spell.all[inp.to_i-1]
                puts "〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰"
                puts spe.name
                puts ""
                puts "📖 Spell type :"
                puts spe.type
                puts ""
                puts "🔮 Spell effect :"
                puts spe.effect
                puts "〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰〰"
                inp = gets.strip.downcase
            end
            puts ""
            puts " Well met, goodbye for now. See you soon! ✨ 🧙 ✨ "
            puts ""
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


end
