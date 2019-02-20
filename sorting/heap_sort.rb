# Time Complexity: O(nlogn)
# Space: O(1)
# Stable: No
#
# [3,5,1,2,4].heap_sort! => [1,2,3,4,5]

require_relative 'sort.rb'

class Array
    include Sort

    def heap_sort!
        n = self.size - 1

        (n - 2 / 2).downto(0) do |i|
            sink(i, n)
        end
        
        j = n

        while (j > 0) do
            swap(self, 0, j)
            j -= 1
            sink(0, j)
        end

        self
    end

    private

    def sink(i, n)
        k = i

        while (2 * k + 1 <= n) do 
            j = 2 * k + 1
            j += 1 if (j < n && less(self, j, j+1))
            break if less(self, j, k)
            swap(self, k, j)
            k = j
        end
    end
end
