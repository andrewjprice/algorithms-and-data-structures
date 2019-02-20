# Time Complexity: O(n^3/2)
# Space: O(1)
# Stable: No
# Extension of insertion sort
#
# [3,5,1,2,4].shell_sort! => [1,2,3,4,5]

require_relative 'sort.rb'

class Array
    include Sort

    def shell_sort!
        n = self.size
        gap = 1

        gap = (3 * gap) + 1 while (gap < n / 3)

        while (gap >= 1) do
            gap.upto(n - 1) do |i|
                j = i

                while j >= gap && less(self, j, j - gap) do
                    swap(self, j, j - gap)
                    j -= gap
                end
            end
            gap /= 3
        end
        
        self
    end
end
