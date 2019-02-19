# Time Complexity: O(nlogn)
# Space: O(1)

require_relative 'sort.rb'

class HeapSort
    include Sort

    attr_reader :set, :size

    def initialize(set)
        @set = set
        @size = set.size - 1
    end

    def sort
        (size-2/2).downto(0) do |i|
            sink(i, size)
        end
        
        j = size

        while (j > 0) do
            swap(set, 0, j)
            j -= 1
            sink(0, j)
        end

        set
    end

    private

    def sink(i, n)
        k = i
        while (2*k+1 <= n) do 
            j = 2*k+1
            j += 1 if (j < n && less(set, j, j+1))
            break if less(set, j, k)
            swap(set, k, j)
            k = j
        end
    end
end
