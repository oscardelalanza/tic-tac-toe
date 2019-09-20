puts "TIC TAC TOE"

puts "What is the player 1 name?"
player1 = gets.chomp

puts "What is the player 2 name?"
player2 = gets.chomp

puts "Player1: #{player1} 'X' vs #{player2} 'O'"


time = 0

while time < 9
    
    if time.even?
        
        puts "#{player1} insert a coordinate"
        gets.chomp
        puts "your movement is on the board"
        
    else
    
        puts "#{player2} insert a coordinate"
        gets.chomp
        puts "your movement is on the board"
        
    end
    
    time += 1

end

puts "The game is Over"
puts "The winner is Player ? / Draw"