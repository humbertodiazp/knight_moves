class Knight
    attr_accessor :start_point , :end_point 
    def initialize(start_point, end_point)
        @start_point = start_point
        @end_point = end_point
    end


    # a knight can move up one place and two to the side 
    def knigh_move(start_point, end_point)
        x = start_point[0] 
        y = start_point[1] 
        a = end_point[0] 
        b = end_point[1] 
        # logic herer needs to be improved
         if x > 8 || y > 8 || a > 8 || b > 8 |

            return 'invalid move, outside of play area'
         else 
            x += 1 & y =+ 2 
            puts start_point
        end
            return knigh_move(start_point, end_point)

        end
    end

end

