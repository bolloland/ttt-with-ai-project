require 'pry'

class Board
        attr_accessor :cells, :index

    def initialize
        reset!
        @index = index
    end

    def reset!
        @cells = Array.new(9, " ")
    end

   

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    # def input_to_index(input)
    #     index = input.to_i-1
    # end
    
    def position(input)
        #binding.pry
        index = input.to_i-1
        @cells[index]
    end
    
    def full? ##in-progress game
        @cells.all? {|space| space != (" ")}    
    end

    def turn_count
        @cells.count {|token| token == "X" || token == "O"}
    end

    def taken?(input)
        index = input.to_i-1
        if @cells[index] == "X" || @cells[index] == "O"
             return true
        else
            false
        end #if @board[3] has an X or O, it's true
    end

    def valid_move?(input)
        index = input.to_i-1
        #binding.pry
        if index.between?(0,8) && !taken?(input) 
           true
        else
           false
        end #index is in raange (0..8) and position_taken? == false
    end

    # def token
    #     if turn_count.odd?
    #         "X"
    #     else
    #         "O"
    #     end
    # end


    #set it equal to the token of the 
    #player object by calling the #token method on the player.
    def update(input, player)
        @cells[input.to_i-1] = player.token
        # display
    end


    # def move(index, token = "X")
    #     @board[index] = token
    # end

end
