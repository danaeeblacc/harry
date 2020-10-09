## interactions with user
# contain all of the gets and puts 
# control the flow of the program

class CLI 
    
    def start 
        puts ""
        puts "Welcome to the Hogwards Witchcraft and Wizadry Spell-casting Tournament!"
        puts ""
        puts " Search your desired spells by entering spell name"
        puts ""
        @charm = gets.strip.downcase
        puts ""
        API.fetch_spell(@charm)
        puts ""
        spell = Spell.all
        print_spell(spell)
        puts""
        puts "type a number to see more details or type 'exit' to exit"
    end

    def print_spell(spe)
        puts ""
        puts "Here are your spell and #{@charm} options"
        puts ""
        spe.each.with_index(1) do | d, i |
            puts "#{i}. #{d.name}"
        end


    end


end