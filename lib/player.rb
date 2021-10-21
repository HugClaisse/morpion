class Player
    attr_accessor :name, :player_symbol

    def initialize(name, value)
        @player_name = gets_player_name
        @player_symbol = gets_player_symbol

        # On init les variables noms et player_symboles
    end

    def show_state
        puts "Le joueur #{@player_name} joue avec les '#{@player_symbol}"
    end
     # On met en privé pour ne pas montrer à chaque fois
    private
    def gets_name
        print "Quel est ton nom ? "
        nom = gets.chomp
    end

    def gets_player_symbol
        print "Quel jeton souhaites-tu ? (X ou O) "
        player_symbol = gets.chomp.upcase
        while player_symbol != "X" && player_symbol != "O"
            puts "~~~~> Soit X, Soit O <~~~~"
            print "Quel jeton souhaites-tu ? (X ou O) "
            player_symbol = gets.chomp.upcase
        end
        return player_symbol
    end

end
