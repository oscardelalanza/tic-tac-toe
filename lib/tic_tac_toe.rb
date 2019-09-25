# frozen_string_literal: true

class TicTacToe
    # player tokens
    X_TOKEN = :X
    O_TOKEN = :O
    
    attr_writer :board
    attr_reader :player1
    attr_reader :player2
    
    def initialize(player1, player2)
        @board = %w[1 2 3 4 5 6 7 8 9]
        @player1 = player1
        @player2 = player2
    end

    private
    
    def rows
        # board rows
        row1 = [@board[0], @board[1], @board[2]]
        row2 = [@board[3], @board[4], @board[5]]
        row3 = [@board[6], @board[7], @board[8]]
        [row1, row2, row3]
    end
    
    def cols
        # board columns
        col1 = [@board[0], @board[3], @board[6]]
        col2 = [@board[1], @board[4], @board[7]]
        col3 = [@board[2], @board[5], @board[8]]
        [col1, col2, col3]
    end
    
    def diagonals
        # board diagonals
        diag1 = [@board[0], @board[4], @board[8]]
        diag2 = [@board[2], @board[4], @board[6]]
        [diag1, diag2]
    end    

    # this method is used to evaluate if a winner combination is found
    # @return boolean
    def combinations
        winner = false
        data = {}
    
        rows.each_with_index do |row, index|
            next unless row.all?(X_TOKEN) || row.all?(O_TOKEN)
            
            data = {
                comb: 1,
                index: index
            }
            
            winner = true
        end
        
        cols.each_with_index do |col, index|
            next unless col.all?(X_TOKEN) || col.all?(O_TOKEN)
            
            data = {
                comb: 2,
                index: index
            }
            
            winner = true
        end
        
        diagonals.each_with_index do |diag, index|
            next unless diag.all?(X_TOKEN) || diag.all?(O_TOKEN)
            
            data = {
                comb: 3,
                index: index
            }
            
            winner = true
        end

        if winner
            winner = rows[data[:index]].first if data[:comb] == 1
            winner = cols[data[:index]].first if data[:comb] == 2
            winner = diagonals[data[:index]].first if data[:comb] == 3
        end
        
        winner
    end
    
    public
    
    # this method is used to set a token on the board
    # @return boolean
    def set_index(index, player)
        index -= 1
        
        if board_position(index)
            if validate_index(index)
                @board[index] = player == @player1 ? X_TOKEN : O_TOKEN
                true
            else
                false
            end
        else
            false
        end
    end
    
    # this method is used to check if a winner combination is found
    # @return boolean
    def winner
        if combinations == X_TOKEN
            1
        elsif combinations == O_TOKEN
            2
        else
            false
        end
    end
end
