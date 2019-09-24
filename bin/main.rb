# frozen_string_literal: true

require_relative '../lib/tic_tac_toe.rb'
require_relative '../lib/player.rb'

puts 'TIC TAC TOE'

puts 'What is the player 1 name?'
player1 = gets.chomp

puts 'What is the player 2 name?'
player2 = gets.chomp

puts player1.to_s + ' X vs ' + player2.to_s + ' O '
time = 0

# Array of board elements
game = TicTacToe.new
game_player1 = Player.new(player1)
game_player2 = Player.new(player2)

while time < 9
    # display board showing number of square to choose from
    game.display_board

    if time.even?
        puts player1.to_s + ': Choose the number on which to place your token'
        player1token = gets.chomp
        
        if game.set_index(player1token.to_i, game_player1.player.to_i)
            puts 'The movement is on board'
            time += 1
        else
            puts 'Invalid position, try again'
        end
    else
        puts player2.to_s + ': Choose the number on which to place your token'
        player2token = gets.chomp
        
        if game.set_index(player2token.to_i, game_player2.player.to_i)
            puts 'The movement is on board'
            time += 1
        else
            puts 'Invalid position, try again'
        end
    end
    
    win_hash = game.winner
    
    if win_hash == 1
        puts
        puts game_player1.name.capitalize + ' is the winner'
        break
    elsif win_hash == 2
        puts 
        puts game_player2.name.capitalize + ' is the winner'
        break
    elsif time == 9
        puts 
        puts 'It\'s a draw'
    end

end

game.display_board

puts 'The game is Over'
