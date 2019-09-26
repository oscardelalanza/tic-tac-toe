# frozen_string_literal: true

class TicTacToe
    # player tokens
    X_TOKEN = :X
    O_TOKEN = :O
    
    attr_reader :player1
    attr_reader :player2
    
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    private
    
    def rows(board)
        # board rows
        row1 = [board[0], board[1], board[2]]
        row2 = [board[3], board[4], board[5]]
        row3 = [board[6], board[7], board[8]]
        [row1, row2, row3]
    end
    
    def cols(board)
        # board columns
        col1 = [board[0], board[3], board[6]]
        col2 = [board[1], board[4], board[7]]
        col3 = [board[2], board[5], board[8]]
        [col1, col2, col3]
    end
    
    def diagonals(board)
        # board diagonals
        diag1 = [board[0], board[4], board[8]]
        diag2 = [board[2], board[4], board[6]]
        [diag1, diag2]
    end    

    # this method is used to evaluate if a winner combination is found
    # @return boolean
    def combinations(board)
        winner = false
    
        rows(board).each_with_index do |row, index|
            next unless row.all?(X_TOKEN) || row.all?(O_TOKEN)
            
            winner = row
        end
        
        cols(board).each_with_index do |col, index|
            next unless col.all?(X_TOKEN) || col.all?(O_TOKEN)
            
            winner = col
        end
        
        diagonals(board).each_with_index do |diag, index|
            next unless diag.all?(X_TOKEN) || diag.all?(O_TOKEN)
            
            winner = diag
        end
        
        winner
    end
    
    public
    
    # this method is used to check if a winner combination is found
    # @return boolean
    def winner(board)
        array = [1]
        array = combinations(board) if combinations(board)
        
        if array.all?(X_TOKEN)
            1
        elsif array.all?(O_TOKEN)
            2
        else
            false
        end
    end
end
