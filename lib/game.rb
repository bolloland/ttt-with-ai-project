require 'pry'
# require_relative '../lib/board.rb'
#providing relationships with players and a board
class Game
    attr_accessor :board, :player_1, :player_2
    
    WIN_COMBINATIONS = [
        [0,1,2],[3,4,5],[6,7,8],
        [0,3,6],[1,4,7],[2,5,8],
        [0,4,8],[2,4,6]
    ]
    
    def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
        @board = board
        @player_1 = player_1
        @player_2 = player_2
    
    end

    def current_player
        @board.turn_count % 2 == 0 ? @player_1 : @player_2
        ## ?? Why do I call on @board here? 
        # @board is an instance, not a class...
        #Why doesn't @turn_count work?
    end

    def won?  #if WIN_COMBINATIONS are all X's or O's
        # binding.pry
        WIN_COMBINATIONS.each do |array| #here, "array" is teh Winning COMBO
        if  (@board.cells[array[0]] == "X" && @board.cells[array[1]] == "X" && @board.cells[array[2]] == "X") || 
            (@board.cells[array[0]] == "O" && @board.cells[array[1]] == "O" && @board.cells[array[2]] == "O")
            return (array)      
            end
        end 
        return false
    end

        def draw? #not won?
            !won? && @board.full?
        end

        def over?
            won? || draw?
        end

        def winner #given won?
        if array = won?  # something needs to win. you can't just put won?
            @board.cells[array[0]] 
            end
        end
        
        def turn  #MAKES VALID MOVES
            # binding.pry
            input = STDIN.gets.strip
            @board.valid_move?(input)
            
          
        end


    


end
