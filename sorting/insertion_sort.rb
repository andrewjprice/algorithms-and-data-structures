# Time Complexity: Between O(n) and O(n^2)
# Space: O(1)
# Stable: Yes
# Useful when number of elements is small

require_relative 'sort.rb'

class InsertionSort
    include Sort

    attr_reader :set

    def initialize(set)
        @set = set
    end

    def sort
        n = set.size - 1
        
        n.times do |i|
            (i+1).upto(n) do |j|
                swap(set, i, j) if less(set, j, i)
            end
        end
        
        set
    end
end
