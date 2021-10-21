require_relative 'game'

class Morpion
    attr_accessor :player1, :player2, :game

    @@game_counter=0

    def initialize
        @game = Game.new
        # Init d'une partie
        while @game.status == 'en cours'
            @game.turn
            # tour des joueurs
            @game.game_over
            # Message de fin du jeu
            @game.new_round
            # demande de rejouer la partie

        end

    end
end