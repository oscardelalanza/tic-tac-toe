# frozen_string_literal: true

require_relative '../lib/player'

RSpec.describe Player do
    let(:player) { Player.new('player 1', 1) }
    
    context '#initialize' do
        it 'player object should be a Player' do
            expect(player).to be_a Player
        end
        
        it 'Player instance should receive two parameters' do
            allow_any_instance_of(Player).to receive(:name)
            allow_any_instance_of(Player).to receive(:player_num)
        end
    end
end
