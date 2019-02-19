require_relative 'sort.rb'

class QuickSort
    include Sort

    def initialize(set)
        @set = set
    end

    def sort
        shuffle_set = @set.shuffle
        sort_list(shuffle_set, 0, @set.size - 1)
    end

    private

    def sort_list(list, low, high)
        return list if high <= low

        j = partition(list, low, high)
        sort_list(list, low, j-1)
        sort_list(list, j+1, high)
    end

    def partition(a, low, high)
        i = low
        l = low + 1
        r = high

        while true do
            until a[l] > a[i] do
                break if l >= high
                l += 1
            end

            until a[r] < a[i] do
                break if r <= low
                r -= 1
            end
            
            if (l >= r)
                swap(a, i, r)
                break
            else
                swap(a, l, r)
            end
        end
        r
    end
end
