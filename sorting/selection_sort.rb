require_relative 'sort.rb'

class SelectionSort
    include Sort

    attr_reader :set

    def initialize(set)
        @set = set
    end

    def sort
        n = set.size - 1
        
        n.times do |i|
            min = i
            (i+1).upto(n) do |j|
                min = j if less(set, j, min)
            end
            swap(set, i, min)
        end

        set
    end
end
