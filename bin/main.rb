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
        puts player1.to_s + ": Choose the number on which to place your token"
        player1token = gets.chomp
        game.set_index(player1token.to_i, game_player1)
        # check input to validate whether
    else
        puts player2.to_s + ": Choose the number on which to place your token"
        player2token = gets.chomp
        game.set_index(player2token.to_i, game_player2)
        # check input to validate whether
    end
    game.winner
    time += 1
    puts 'The movement is on board'

    # check board for winning combination
end

puts 'The game is Over'
puts 'The winner is Player ? / Draw'
