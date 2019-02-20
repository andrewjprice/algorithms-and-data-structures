# Time Complexity: O(nlogn)
# Space: O(logn)
# Stable: No
# Divide and conquer 
#
# [3,5,1,2,4].quick_sort! => [1,2,3,4,5]

require_relative 'sort.rb'

class Array
    include Sort

    def quick_sort!
        self.shuffle!
        quick_sort(0, self.size - 1)
        self
    end

    private

    def quick_sort(low, high)
        return self if high <= low

        j = partition!(low, high)
        quick_sort(low, j - 1)
        quick_sort(j + 1, high)
    end

    def partition!(low, high)
        i = low
        l = low + 1
        r = high

        while true do
            until self[l] > self[i] do
                break if l >= high
                l += 1
            end

            until self[r] < self[i] do
                break if r <= low
                r -= 1
            end
            
            if (l >= r)
                swap(self, i, r)
                break
            else
                swap(self, l, r)
            end
        end
        r
    end
end
