# Recursive Top Down Implementation
# Time Complexity: O(nlogn)
# Space: O(n)
# Stable: Yes
# Divide and conquer, useful for sorting linked lists
#
# [3,5,1,2,4].merge_sort! => [1,2,3,4,5]

require_relative 'sort.rb'

class Array
    include Sort

    def merge_sort!
        return self if self.size <= 1

        high = self.size - 1
        mid = high / 2
        left = self[0..mid].merge_sort!
        right = self[mid + 1..high].merge_sort!

        merge(left, right)
    end
end
