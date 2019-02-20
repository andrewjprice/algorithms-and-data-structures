# Time Complexity: O(logn)
# Space: O(logn)
# Divide and conquer

class BinarySearch
    attr_reader :set, :key

    def initialize(set, key)
        @set = set
        @key = key
    end

    def recursive_search
        n = set.size - 1
        search(0, n)
    end

    def iterative_search
        low = 0
        high = set.size - 1

        while (low <= high) do
            mid = (low + high) / 2

            return mid if set[mid] == key

            if key < set[mid]
                high = mid
            elsif key > set[mid]
                low = mid + 1
            else
                break
            end
        end
        false
    end

    private

    def search(low, high)
        mid = (low + high) / 2
        
        return mid if set[mid] == key

        if key < set[mid]
            search(low, mid - 1) 
        elsif key > set[mid]
            search(mid + 1, high)
        else
            false
        end
    end
end
