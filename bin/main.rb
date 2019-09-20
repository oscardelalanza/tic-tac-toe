# frozen_string_literal: true

puts 'TIC TAC TOE'

puts 'What is the player 1 name?'
player1 = gets.chomp

puts 'What is the player 2 name?'
player2 = gets.chomp

puts player1.to_s + ' X vs ' + player2.to_s + ' O '
time = 0

# Array of board elements

message = ': Choose the number of the square where you want to place your token'

while time < 9

    # display board showing number of square to choose from

    if time.even?
        puts player1.to_s + message
        # player1token = gets.chomp
        # check input to validate whether
    else
        puts player2.to_s + message
        # player2token = gets.chomp
        # check input to validate whether
    end
    
    time += 1
    puts 'The movement is on board'

    # check board for winning combination
end

puts 'The game is Over'
puts 'The winner is Player ? / Draw'
