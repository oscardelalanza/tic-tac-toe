# frozen_string_literal: true

require 'tic_tac_toe'

class Player < TicTacToe
    
    @@players = 0
    
    def initialize(name)
        @@players += 1
        @name = name
        @player = @@players
        @token = @@players == 1 ? 'X' : 'O'
    end
    
end
