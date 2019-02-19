require_relative 'sort.rb'

class ShellSort
    include Sort

    attr_reader :set

    def initialize(set)
        @set = set
    end

    def sort
        n = set.size
        gap = n / 2

        while (gap > 0) do
            (gap...n).each do |i|
                j = i
                while j >= gap && less(set, j, j-gap) do
                    swap(set, j, j-gap)
                    j -= gap
                end
            end
            gap /= 2
        end
        
        set
    end
end
