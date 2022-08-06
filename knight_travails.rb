class Knight
    attr_accessor :start_point , :end_point 
    def initialize(start_point, end_point)
        @start_point = start_point
        @end_point = stop_point

    # a knight can move up one place and two to the side 
    def knigh_move(start_point)
        x = start_point[0] 
        y= end_point[1] 
        # logic herer needs to be improved
         if x >= 0 & x[0] <= 8 & if y >= 0 & y <= 8 
            start_point[0] += 1
            end_point[1] += 1 
    end
end

