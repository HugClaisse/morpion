require_relative 'board'
require_relative 'player'


class Game

    require_relative 'board'
    require 'view/show'
    require_relative 'player'

    class Game
        attr_accessor :current_player, :status, :player_list, :board

        def initialize
            # Création de deux joueurs, créer un board, met le status "en cours", définit le current_player
            @player1 = Player.new
            @player2 = Player.new
            @player_list = [@player1, @player2]
            @status = 'en cours'

            # Type de jeton
            if @player1.player_symbol == @player2.player_symbol
                puts "Attention, les jetons sont identiques !! changeons les"
                if player1.player_symbol == 'X'
                    @player2.player_symbol == 'O'
                elsif player1.player_symbol == 'O'
                    @player2.player_symbol == 'X'
                end
            end

            @player1.show_state
            @player2.show_state
            # Init du damier
            @board = Board.new
            # Affiche le damier
            Show.new.show_board(@board)
        end

        def turn
            i = 0
            while @status == 'en cours' && i<9
                @current_player = @player_list[i%2]
                # Cette méthode permet d'alterner les tours
                Show.new.show_board(@board)

                # Check gagnant
                if @board.victory?(@board)
                    @status = 'Gagnant '
                    break
                end

                i+=1 # Compte le nombre de tours
            end
        end

        def new_round
            print "On en refait une (O/N) ? "
            choix = gets.chomp.upcase

            if choix == 'O'
                @board = Board.new
                @status = "en cours"
                puts '-' * 20
                puts "C'est reparti !"
                Show.new.show_board(@board)

            elsif choix == 'N'
                puts "A plus !"
                exit

                elsif
                    new_round
                end
            end

        def game_over
            if @status == 'en cours'
                puts "Match nul"
                elsif @status == 'gagnant '
                    puts "C'est #{current_player.player_name} qui l'emporte ! Bravo !!"
                end
            end

        end

