# Time Complexity: O(n^2)
# Space: O(1)
# Stable: Yes
#
# [3,5,1,2,4].bubble_sort! => [1,2,3,4,5]

require_relative 'sort.rb'

class Array
    include Sort

    def bubble_sort!
        n = self.size - 1

        loop do
            swap = false

            n.times do |i|
                if less(self, i+1, i)
                    swap(self, i, i+1)
                    swap = true
                end
            end

            break if !swap
        end
        self
    end
end

p [3,5,1,2,4].bubble_sort!