# frozen_string_literal: true

class Board
    # player tokens
    X_TOKEN = :X
    O_TOKEN = :O

    attr_reader :board

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

    # this method is used to check if the given element is a valid board position
    # @param position
    # @return boolean
    def board_position(position)
        if position.to_i >= 0 && position.to_i < 9
            true
        else
            false
        end
    end

    public

    # this method is used to print the board on the terminal
    def display_board
        row1 = " #{@board[0]} | #{@board[1]} | #{@board[2]}\n"
        row2 = " #{@board[3]} | #{@board[4]} | #{@board[5]}\n"
        row3 = " #{@board[6]} | #{@board[7]} | #{@board[8]}\n"
        spacer = "-----------\n"

        row1 + spacer + row2 + spacer + row3
    end

    # this method is used to set a token on the board
    # @return boolean
    def set_index(index, player)
        index -= 1

        if board_position(index)
            if validate_index(index)
                @board[index] = player == 1 ? X_TOKEN : O_TOKEN
                true
            else
                false
            end
        else
            false
        end
    end
end
