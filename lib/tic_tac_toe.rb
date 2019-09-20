# frozen_string_literal: true

class TicTacToe
    
    X_TOKEN = 'X'
    O_TOKEN = 'O'
    
    @board = %w[1 2 3 4 5 6 7 8 9]
    
    # board rows
    @row1 = [@board[0], @board[1], @board[2]]
    @row2 = [@board[3], @board[4], @board[5]]
    @row3 = [@board[6], @board[7], @board[8]]
    @rows = [@row1, @row2, @row3]
    
    # board columns
    @col1 = [@board[0], @board[3], @board[6]]
    @col2 = [@board[1], @board[4], @board[7]]
    @col3 = [@board[2], @board[5], @board[8]]
    @cols = [@col1, @col2, @col3]
    
    # board diagonals
    @diag1 = [@board[0], @board[4], @board[8]]
    @diag2 = [@board[2], @board[4], @board[6]]
    @diagonals = [@diag1, @diag2]

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts '-----------'
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts '-----------'
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    
    private
    
    def validate_index(index)
        if @board[index] == X_TOKEN || @board[index] == O_TOKEN
            false
        else
            true
        end
    end
    
    public
    
    def set_index(index, player)
        index -= 1
        
        if validate_index(index)
            @board[index] = player == 1 ? X_TOKEN : O_TOKEN
            true
        else
            false
        end
    end
    
    def win_row
        winner = false
        
        @rows.each do |row|
            winner = true if row.all?(X_TOKEN) || row.all?(O_TOKEN)
        end
        
        winner
    end
    
    def win_column
        winner = false
        
        @cols.each do |col|
            winner = true if col.all?(X_TOKEN) || col.all?(O_TOKEN)
        end
        
        winner
    end
    
    def win_diagonal
        winner = false
        
        @diagonals.each do |diag|
            winner = true if diag.all?(X_TOKEN) || diag.all?(O_TOKEN)
        end
        
        winner
    end
end
