# frozen_string_literal: true

class Player
    
    attr_reader :name, :player_num
    
    def initialize(name, player_num)
        @name = name
        @player_num = player_num
    end
end
