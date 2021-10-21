class Player
    attr_accessor :name, :symbol

    def initialize(name, value)
        @name = gets_name
        @symbol = gets_symbol

        # On init les variables noms et symboles
    end

    def show_state
        puts "Le joueur #{@name} joue avec les '#{@symbol}"
    end
     # On met en privé pour ne pas montrer à chaque fois
    private
    def gets_name
        print "Quel est ton nom ? "
        nom = gets.chomp
    end

    def gets_symbol
        print "Quel jeton souhaites-tu ? (X ou O) "
        symbol = gets.chomp.upcase
        while symbol != "X" && symbol != "O"
            puts "~~~~> Soit X, Soit O <~~~~"
            print "Quel jeton souhaites-tu ? (X ou O) "
            symbol = gets.chomp.upcase
        end
        return symbol
    end

end
