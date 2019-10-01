# frozen_string_literal: true

require_relative '../lib/tic_tac_toe'

RSpec.describe TicTacToe do
    context '#winner' do
        subject(:game) { TicTacToe.new('player1', 'player2') }

        it 'returns nil if board has not a winner combination' do
            expect(game.winner(%w[1 2 3 4 5 6 7 8 9])).to eql(nil)
        end

        it 'returns 1 if the board has a winner combination for player 1 on a row' do
            expect(game.winner([:X, :X, :X, '4', '5', '6', '7', '8', '9'])).to eql(1)
        end

        it 'returns 1 if the board has a winner combination for player 1 on a column' do
            expect(game.winner([:X, '2', '3', :X, '5', '6', :X, '8', '9'])).to eql(1)
        end

        it 'returns 1 if the board has a winner combination for player 1 on a diagonal' do
            expect(game.winner([:X, '2', '3', '4', :X, '6', '7', '8', :X])).to eql(1)
        end

        it 'returns 2 if the board has a winner combination for player 2 on a row' do
            expect(game.winner(['1', '2', '3', :O, :O, :O, '7', '8', '9'])).to eql(2)
        end

        it 'returns 2 if the board has a winner combination for player 2 on a column' do
            expect(game.winner(['1', :O, '3', '4', :O, '6', '7', :O, '9'])).to eql(2)
        end

        it 'returns 2 if the board has a winner combination for player 2 on a diagonal' do
            expect(game.winner(['1', '2', :O, '4', :O, '6', :O, '8', '9'])).to eql(2)
        end
    end
end
