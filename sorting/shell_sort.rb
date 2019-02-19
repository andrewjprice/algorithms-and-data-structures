require_relative 'sort.rb'

class ShellSort
    include Sort

    attr_reader :set

    def initialize(set)
        @set = set
    end

    def sort
        n = set.size
        gap = 1

        gap = (3 * gap) + 1 while (gap < n/3)

        while (gap >= 1) do
            (gap...n).each do |i|
                j = i
                while j >= gap && less(set, j, j-gap) do
                    swap(set, j, j-gap)
                    j -= gap
                end
            end
            gap /= 3
        end
        
        set
    end
end
