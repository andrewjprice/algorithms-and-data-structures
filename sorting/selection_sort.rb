# Time Complexity: O(n^2)
# Space: O(1)
# Stable: No
# Useful when number of elements is small
#
# [1,2,3,4,5].selection_sort! => [3,5,1,2,4]

require_relative 'sort.rb'

class Array
    include Sort

    def selection_sort!
        n = self.size - 1
        
        n.times do |i|
            min = i
            (i + 1).upto(n) do |j|
                min = j if less(self, j, min)
            end
            swap(self, i, min)
        end

        self
    end
end
