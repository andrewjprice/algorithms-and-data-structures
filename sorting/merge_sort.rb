# Recursive Top Down Implementation
# Time Complexity: O(nlogn)
# Space: O(n)
# Divide and conquer, useful for sorting linked lists

require_relative 'sort.rb'

class MergeSort
    include Sort

    attr_reader :set

    def initialize(set)
        @set = set
    end

    def sort
        sort_list(set)
    end

    private

    def sort_list(list)
        return list if list.size <= 1
        high = list.size - 1
        mid = high / 2
        left = sort_list(list[0..mid])
        right = sort_list(list[mid+1..high])

        merge(left, right)
    end
end
