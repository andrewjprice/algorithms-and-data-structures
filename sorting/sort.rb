module Sort
    def swap(list, a, b)
        list[a], list[b] = list[b], list[a]
    end

    def less(list, a, b)
        list[a] < list[b]
    end

    def merge(left, right)
        if (left.empty?)
            right
        elsif (right.empty?)
            left
        elsif (left.first < right.first)
            [left.first] + merge(left[1..left.size - 1], right)
        else
            [right.first] + merge(left, right[1..right.size - 1])
        end
    end

    def sorted?(list)
        n = list.size - 1

        n.times do |i|
            return false unless less(list, i, i+1)
        end
        true
    end
end
