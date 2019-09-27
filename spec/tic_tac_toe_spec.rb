# frozen_string_literal: true

require_relative '../lib/tic_tac_toe'
require_relative '../lib/board'

RSpec.describe TicTacToe do
    context '#winner' do
      it 'returns an integer if board has a winner combination' do
        expect(winner(board)).to be a(integer)
      end
    end
end
