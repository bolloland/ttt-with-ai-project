require 'pry'

#providing relationships with players and a board
class Game
    attr_accessor :board, :player_1, :player_2
    
    WIN_COMBINATIONS = [
        [0,1,2],[3,4,5],[6,7,8],
        [0,3,6],[1,4,7],[2,5,8],
        [0,4,8],[2,4,6]
    ]
    
    def initialize(board, player_1, player_2)
        @board = Board.new
        @player_1 = Player.new("X")
        @player_2 = Player.new("O")
    
    end



end
