require_relative 'board'
require_relative 'player'

class Game

    attr_accessor :board, :player1, :player2

    def initialize

        @player = []
        
        puts "Joueur 1, Quelle est ton nom ?"

        player_name = gets.chomp
        @player1 = Player.new(player_name, "X")
        @players << @player1
        @player1.value = "X"
        @current_player = @player1

        puts " Joueur 2, Quelle est ton nom ?"

        player_name = gets.chomp
        player2 = Player.new(player_name, "0")
        @players << @player2
        @player2.value = "0"

        puts "Bienvenue " + player1.name + " et " + player2.name + " ! "
        puts player1.name + " jouera avec les " + player1.value + " et " + player2.name + " jouera avec les " + player2.value + "."

        @board = Board.new

    end
    