# Time Complexity: O(logn)
# Space: O(1) or O(logn)
# Divide and conquer
#
# [10,20,30,40,50].binary_search!(10) => 0

class Array
    # Iterative
    def binary_search!(key)
        low = 0
        high = self.size - 1

        while (low <= high) do
            mid = (low + high) / 2

            return mid if self[mid] == key

            if key < self[mid]
                high = mid
            elsif key > self[mid]
                low = mid + 1
            else
                break
            end
        end

        false
    end

    # Recursive
    def rbinary_search!(key)
        n = self.size - 1
        search(0, n, key)
    end

    private

    def search(low, high, key)
        mid = (low + high) / 2
        
        return mid if self[mid] == key

        if key < self[mid]
            search(low, mid - 1, key) 
        elsif key > self[mid]
            search(mid + 1, high, key)
        else
            false
        end
    end
end
