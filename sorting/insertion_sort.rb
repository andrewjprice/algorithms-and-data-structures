# Time Complexity: Between O(n) and O(n^2)
# Space: O(1)
# Stable: Yes
# Useful when number of elements is small
#
# [3,5,1,2,4].insertion_sort! => [1,2,3,4,5]

require_relative 'sort.rb'

class Array
    include Sort

    def insertion_sort!
        n = self.size - 1
        
        n.times do |i|
            (i + 1).upto(n) do |j|
                swap(self, i, j) if less(self, j, i)
            end
        end
        
        self
    end
end
