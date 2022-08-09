class Knight
    attr_accessor :start_point , :end_point 
    def initialize(start_point, end_point)
        @start_point = start_point
        @end_point = end_point
    end

    # need function that will output all the possible moves for a knight based on its start_point
    #  once we have all possible moves, we can recursively call other coordinates to figure out 
    # which moves will get us to the end_point most efficiently. i.e. find the coordinates closest 
    # to our end_point, then call on those cooridanates recursively to find the fastest route. 

    # need this function to do this: for x add 1, and for y add 2, then for x add 2 and for y add 1 unless at  8
    # then for x minus 1, and for y minus 2, and then for x minues 2, and for y minus 1 unless at 0 
    def possible_moves(@start_point, @end_point)
        a = end_point[0]
        b = end_point[1]
        x = @start_point[0] 
        y = @start_point[1]
        if  a > 8 || b > 8 
            return 'invalid move, outside of board'
        end 

        moves_array = [x,y]

        if x >= 0 & y >= 0 
             moves_array.each do |x, y|
              x += 1
              y += 2
              moves_array.push(x, y)
             end 
         end

        


    end

    # a knight can move up one place and two to the side 
    def knight_moves(@start_point, @end_point)

        a = end_point[0]
         puts a
        b = end_point[1]
        puts b
        if  a > 8 || b > 8 
            return 'invalid move, outside of board'
        end 
        x = @start_point[0].to_s 
        y = @start_point[1].to_s
        a = @end_point[0].to_s 
        b = @end_point[1].to_s
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
    
    # need to calculate all the possible moves for a knight piece, based on its start_point coordinates
    #  i.e. if 0,0 is the start, then it can go to (1,2)(2,1) if start is (3,3) it can go to (1,2)(2,1)(5,4)(4,5)
    if x > a then knight needs to move to the left of the board and vice versa 
    if y > b then knight needs to move up the board and vice versa

        so if x greater than a subtract 2 from end point to figure out next x move for knight 

    also cannot be smaller than 0, so it doesnt go over the board

    # need function that will output all the possible moves for a knight based on its start_point

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

 (5,5)(4,3)


                (0,1)goes outside the 8x8 board ``