# frozen_string_literal: true

class TicTacToe
    # player tokens
    X_TOKEN = 'X'
    O_TOKEN = 'O'

    # array to hold the movements
    @board = []

    def initialize
        @board = %w[1 2 3 4 5 6 7 8 9]

        # board rows
        row1 = [@board[0], @board[1], @board[2]]
        row2 = [@board[3], @board[4], @board[5]]
        row3 = [@board[6], @board[7], @board[8]]
        @rows = [row1, row2, row3]

        # board columns
        col1 = [@board[0], @board[3], @board[6]]
        col2 = [@board[1], @board[4], @board[7]]
        col3 = [@board[2], @board[5], @board[8]]
        @cols = [col1, col2, col3]

        # board diagonals
        diag1 = [@board[0], @board[4], @board[8]]
        diag2 = [@board[2], @board[4], @board[6]]
        @diagonals = [diag1, diag2]
    end

    private
    
    # This method is used to validate if an position is already taken by a player
    # @param index
    # @return boolean
    def validate_index(index)
        if @board[index] == X_TOKEN || @board[index] == O_TOKEN
            false
        else
            true
        end
    end

    # this method is used to evaluate if the player X win in any of the possible combinations on the board
    # @return boolean
    def winner_x
        winner = false
    
        @rows.each do |row|
            winner = true if row.all?(X_TOKEN)
        end
        
        @cols.each do |col|
            winner = true if col.all?(X_TOKEN)
        end
        
        @diagonals.each do |diag|
            winner = true if diag.all?(X_TOKEN)
        end
    
        winner
    end

    # this method is used to evaluate if the player Y win in any of the possible combinations on the board
    # @return boolean
    def winner_o
        winner = false
        
        @rows.each do |row|
            winner = true if row.all?(O_TOKEN)
        end
    
        @cols.each do |col|
            winner = true if col.all?(O_TOKEN)
        end
        
        @diagonals.each do |diag|
            winner = true if diag.all?(O_TOKEN)
        end
    
        winner
    end
    
    public
    
    # this method is used to print the board on the terminal
    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts '-----------'
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts '-----------'
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    
    # this method is used to set a token on the board
    # @return boolean
    def set_index(index, player)
        index -= 1
        
        if validate_index(index)
            @board[index] = player == 1 ? X_TOKEN : O_TOKEN
            true
        else
            false
        end
    end
    
    # this method is used to check if a winner combination is found
    # @return boolean

    def winner
        winner = {}
        
        if winner_x
            winner[:player] = X_TOKEN
            winner[:message] = 'Player 1 is the winner'
        elsif winner_o
            winner[:player] = O_TOKEN
            winner[:message] = 'Player 2 is the winner'
        else
            false
        end
    end
end
