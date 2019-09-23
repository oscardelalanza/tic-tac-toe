# frozen_string_literal: true

class TicTacToe
    
    X_TOKEN = 'X'
    O_TOKEN = 'O'
    
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
    
    private
    
    def validate_index(index)
        if @board[index] == X_TOKEN || @board[index] == O_TOKEN
            false
        else
            true
        end
    end

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
    
    def display_board
        if win_column || win_diagonal || win_row
        
        else
            puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
            puts '-----------'
            puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
            puts '-----------'
            puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
        end
    end
    
    def set_index(index, player)
        index -= 1
        
        if validate_index(index)
            @board[index] = player == 1 ? X_TOKEN : O_TOKEN
            true
        else
            false
        end
    end
end
