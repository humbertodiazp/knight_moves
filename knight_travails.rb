class KnightMove
    attr_accessor :start_point, :parent 
    
    # rather than using conditional logic to determine all possible moves, 
    # create an array of all possible moves 

    MOVES= [[1, 2], [-2, -1], [-1, 2], [2, -1],
            [1, -2], [-2, 1], [-1, -2], [2, 1]].freeze

    @@move_list = []

    def initialize(start_point, parent)
        @start_point = start_point
        @parent = parent
        @@move_list.push(start_point)
    end

      #  the self below is the original start_point
    #    or start_point, or the parent if you will. the child is the new start_point
    #    that will be created 
    # this links a child to a parent. the self is the parent, because the self is the start_point
    #  before the first use of .map

    def children
        MOVES.map { |m| [@start_point[0] + m[0], @start_point[1] + m[1]] }
                       .keep_if { |e| KnightMove.valid?(e) }
                       .reject { |e| @@move_list.include?(e) }
                       .map { |e| KnightMove.new(e, self) }
    end
    
    def self.valid?(start_point)
        start_point[0].between?(1, 8) && start_point[1].between?(1, 8)
    end
end


def display_parent(node)
    display_parent(node.parent) unless node.parent.nil?
    p node.start_point
    
end  
    
def knight_moves(start_pos, end_point)
    queue = []
    current_node = KnightMove.new(start_pos, nil)
    until current_node.start_point == end_point
        current_node.children.each { |child| queue.push(child) }
        current_node = queue.shift
    end
    display_parent(current_node)
end

knight_moves([1,1], [8,8])

     

    
    # need function that will output all the possible moves for a knight based on its start_point
    #  once we have all possible moves, we can recursively call other coordinates to figure out 
    # which moves will get us to the end_point most efficiently. i.e. find the coordinates closest 
    # to our end_point, then call on those cooridanates recursively to find the fastest route. 

    # need this function to do this: for x add 1, and for y add 2, then for x add 2 and for y add 1 unless at  8
    # then for x minus 1, and for y minus 2, and then for x minues 2, and for y minus 1 unless at 0 



