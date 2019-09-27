# frozen_string_literal: true

require_relative '../lib/board'

RSpec.describe Board do
    subject(:board) { Board.new }

    context '#display_board' do
        it 'return the board to be displayed' do
            expect(board.display_board).to eql(" 1 | 2 | 3\n-----------\n 4 | 5 | 6\n-----------\n 7 | 8 | 9\n")
        end

        it 'return a string' do
            expect(board.display_board).to be_a(String)
        end

        it "don't return numeric" do
            expect(board.display_board).not_to be_a(Numeric)
        end

        it "don't return nil" do
            expect(board.display_board).not_to eql(nil)
        end

        it "don't return boolean" do
            expect(board.display_board).not_to eql(true)
            expect(board.display_board).not_to eql(false)
        end
    end

    context '#set_index' do
        it 'return true if the value is positioned on the board player 1' do
            (1...9).each do |index|
                expect(board.set_index(index, 1)).to eql(true)
            end
        end

        it 'return true if the value is positioned on the board player 2' do
            (1...9).each do |index|
                expect(board.set_index(index, 2)).to eql(true)
            end
        end

        it 'return false if is not posible to set' do
            expect(board.set_index(10, 1)).to eql(false)
        end
    end
end
