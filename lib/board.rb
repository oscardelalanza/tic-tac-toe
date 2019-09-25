# frozen_string_literal: true

class Board
    def initialize
        @board = %w[1 2 3 4 5 6 7 8 9]
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
end
