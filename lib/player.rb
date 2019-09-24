# frozen_string_literal: true
#
class Player
    attr_reader :player 
    attr_reader :name

    @@players = 0
    
    def initialize(name)
        @@players += 1
        @name = name
        @player = @@players
        @token = @@players == 1 ? 'X' : 'O'
    end
    
end
