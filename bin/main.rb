# frozen_string_literal: true

require_relative '../lib/tic_tac_toe.rb'
require_relative '../lib/player'
require_relative '../lib/board'

# getting info
puts 'TIC TAC TOE'

puts 'What is the player 1 name?'
name1 = gets.chomp

puts 'What is the player 2 name?'
name2 = gets.chomp

# game initialization
player1 = Player.new(name1, 1)
player2 = Player.new(name2, 2)
board = Board.new
game = TicTacToe.new(player1.name, player2.name)

# displaying the game
puts game.player1 + ' X vs ' + game.player2 + ' O '
time = 0

while time < 9
    # display board showing number of square to choose from
    puts board.display_board

    if time.even?
        puts player1.name + ': Choose the number on which to place your token'
        player1token = gets.chomp
        
        if board.set_index(player1token.to_i, player1.player_num)
            puts 'The movement is on board'
            time += 1
        else
            puts 'Invalid position, try again'
        end
    else
        puts player2.name + ': Choose the number on which to place your token'
        player2token = gets.chomp
        
        if board.set_index(player2token.to_i, player2.player_num)
            puts 'The movement is on board'
            time += 1
        else
            puts 'Invalid position, try again'
        end
    end
    
    win_hash = game.winner(board.board)
    
    if win_hash == 1
        puts
        puts game.player1.to_s.capitalize + ' is the winner'
        break
    elsif win_hash == 2
        puts 
        puts game.player2.to_s.capitalize + ' is the winner'
        break
    elsif time == 9
        puts 
        puts 'It\'s a draw'
    end

end

puts board.display_board

puts 'The game is Over'
