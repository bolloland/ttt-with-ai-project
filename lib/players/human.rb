require 'pry'
#This class should be namespaced inside the 
#module Players because the human.rb file is 
#inside the players/ directory. 
module Players

    class Human < Player

        def move(board)
            puts "Choose space 1 thru 9"
            input = gets.strip
            p '*'*99
            p input
            return input
            # @cells[index] = token
        end

    end

end

