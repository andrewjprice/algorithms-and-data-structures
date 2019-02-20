# Recursive Implementation
# Time Complexity: O(logn)
# Space: O(logn)
# Divide and conquer

class BinarySearch
    attr_reader :set, :key

    def initialize(set, key)
        @set = set
        @key = key
    end

    def search
        n = set.size - 1
        binary_search(0, n)
    end

    private

    def binary_search(low, high)
        mid = (low + high) / 2
        
        return mid if set[mid] == key

        if key < set[mid]
            binary_search(low, mid - 1) 
        elsif key > set[mid]
            binary_search(mid + 1, high)
        else
            return -1
        end
    end
end
