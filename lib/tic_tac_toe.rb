# frozen_string_literal: true

class TicTacToe
    
    attr_reader :board
    
    @@board = %w[1 2 3 4 5 6 7 8 9]

    def display_board
        puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
        puts '-----------'
        puts " #{@@board[3]} | #{@@board[4]} | #{@@board[5]} "
        puts '-----------'
        puts " #{@@board[6]} | #{@@board[7]} | #{@@board[8]} "
    end
    
    private def validate_index(index)
        tokens = %w[X O]
        
        if
            false
        else
            true
        end
    end
    
    def position(postion, player)
        
        postion -= 1
        
        if player == 1
            @@board[postion] = 'X'
        else
        
        end
        
        
    end
        @positon = positon

    end
