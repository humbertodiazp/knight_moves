class Knight
    attr_accessor :start_point , :end_point 
    def initialize(start_point, end_point)
        @start_point = start_point
        @end_point = end_point
    end


    # a knight can move up one place and two to the side 
    def knight_moves(start_point, end_point)
        if  a > 8 || b > 8 
            return 'invalid move, outside of board'
        end 
        x = start_point[0].to_s 
        y = start_point[1].to_s
        a = end_point[0].to_s 
        b = end_point[1].to_s
        # logic herer needs to be improved
         while x & y < a & b 
            x += 1 & y += 2 
            puts "[#{x}, #{y}]"
        end
            return knight_moves(x, y)
    end
end

def knight_moves(start_point, end_point)

    # the knight has to move up or down depending on whether the end point is higher or lower than the start.
    # it needs to do this based on going up 1 and 2 to the side, or vice versa. 
    # need a conditional statement that determines whether the knight moves up or down, i.e. adds to x or subtracts
    # and the same goes for y. 
    a = end_point[0]
    puts a
    b = end_point[1]
    puts b
    if  a > 8 || b > 8 
        return 'invalid move, outside of board'
    end 
    x = start_point[0]
    p x
    y = start_point[1]
    p y 
    
    # logic herer needs to be improved
     while x <= a && b <= y
        x += 1 & y += 2 
        puts "[#{x}, #{y}]"
    end
end

puts knight_moves([0,0], [8,8])