
require_relative 'board_case'

class Board
    attr_accessor :board_case_list

    def initialize
        @case1 = BoardCase.new("A1",'.')
        @case2 = BoardCase.new("A2",'.')
        @case3 = BoardCase.new("A3",'.')
        @case4 = BoardCase.new("B1",'.')
        @case5 = BoardCase.new("B2",'.')
        @case6 = BoardCase.new("B3",'.')
        @case7 = BoardCase.new("C1",'.')
        @case8 = BoardCase.new("C2",'.')
        @case9 = BoardCase.new("C3",'.')
        @board_case_list = [case1, @case2, @case3, @case4, @case5, @case6, @case7, @case8, @case9]
    end

    # On nomme les cases


    def play_turn(board,current_player)

        # cette variable permet de vérifier les cases disponibles
        input_ko = true
        # [0] ... [8] ça définit les emplacements
        while input_ko
            print "#{current_player.player_name} ton symbole est le '#{current_player.player_symbol}', quelle case souhaites-tu jouer ? "
            case_to_play = gets.chomp.upcase

            case case_to_play
            when "A1"
                if board.board_case_list[1].symbol == '.'
                    board.board_case_list[1].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end
            when "A2"
                if board.board_case_list[2].symbol == '.'
                    board.board_case_list[2].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end
            when "A3"
                if board.board_case_list[3].symbol == '.'
                    board.board_case_list[3].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end
            when "B1"
                if board.board_case_list[4].symbol == '.'
                    board.board_case_list[4].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end        
            when "B2"
                if board.board_case_list[5].symbol == '.'
                    board.board_case_list[5].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end    
            when "B3"
                if board.board_case_list[6].symbol == '.'
                    board.board_case_list[6].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end
            when "C1"
                if board.board_case_list[7].symbol == '.'
                    board.board_case_list[7].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end        
            when "C2"
                if board.board_case_list[8].symbol == '.'
                    board.board_case_list[8].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end
            when "C3"
                if board.board_case_list[9].symbol == '.'
                    board.board_case_list[9].symbol = current_player.player_symbol
                    input_ko = falseelse
                else
                    puts "Case déja occupée.. Réessayes une autre case !"
                end
            end
        end

        def victory?(board)

            # Combinaisons horizontales
            # Si case identiques

            if board.board_case_list[0].symbol == 'X' && board.board_case_list[1].symbol == 'X' && board.board_case_list[2].symbol == 'X'
                return true
            end
            if board.board_case_list[0].symbol == 'O' && board.board_case_list[1].symbol == 'O' && board.board_case_list[2].symbol == 'O'
                return true
            end
            if board.board_case_list[3].symbol == 'X' && board.board_case_list[4].symbol == 'X' && board.board_case_list[5].symbol == 'X'
                return true
            end
            if board.board_case_list[3].symbol == 'O' && board.board_case_list[4].symbol == 'O' && board.board_case_list[5].symbol == 'O'
                return true
            end
            if board.board_case_list[6].symbol == 'X' && board.board_case_list[7].symbol == 'X' && board.board_case_list[8].symbol == 'X'
                return true
            end
            if board.board_case_list[6].symbol == 'O' && board.board_case_list[7].symbol == 'O' && board.board_case_list[8].symbol == 'O'
                return true
            end

            # Combinaisons verticales
            # Si cases identiques

            if board.board_case_list[0].symbol == 'X' && board.board_case_list[3].symbol == 'X' && board.board_case_list[6].symbol == 'X'
                return true
            end
            if board.board_case_list[0].symbol == 'O' && board.board_case_list[3].symbol == 'O' && board.board_case_list[6].symbol == 'O'
                return true
            end
            if board.board_case_list[1].symbol == 'X' && board.board_case_list[4].symbol == 'X' && board.board_case_list[7].symbol == 'X'
                return true
            end
            if board.board_case_list[1].symbol == 'O' && board.board_case_list[4].symbol == 'O' && board.board_case_list[7].symbol == 'O'
                return true
            end
            if board.board_case_list[2].symbol == 'X' && board.board_case_list[5].symbol == 'X' && board.board_case_list[8].symbol == 'X'
                return true
            end
            if board.board_case_list[2].symbol == 'O' && board.board_case_list[5].symbol == 'O' && board.board_case_list[8].symbol == 'O'
                return true
            end

            # Combinaisons diagonales
            # Si cases identiques

            if board.board_case_list[0].symbol == 'X' && board.board_case_list[4].symbol == 'X' && board.board_case_list[8].symbol == 'X'
                return true
            end
            if board.board_case_list[0].symbol == 'O' && board.board_case_list[4].symbol == 'O' && board.board_case_list[8].symbol == 'O'
                return true
            end
            if board.board_case_list[2].symbol == 'X' && board.board_case_list[4].symbol == 'X' && board.board_case_list[6].symbol == 'X'
                return true
            end
            if board.board_case_list[2].symbol == 'O' && board.board_case_list[4].symbol == 'O' && board.board_case_list[6].symbol == 'O'
                return true
            end

        end
    end
