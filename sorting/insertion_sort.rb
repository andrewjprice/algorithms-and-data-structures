require_relative 'sort.rb'

class InsertionSort
    include Sort

    attr_reader :set

    def initialize(set)
        @set = set
    end

    def sort
        n = set.size - 1
        
        n.times do |i|
            (i+1).upto(n) do |j|
                swap(set, i, j) if !less(set, i, j)
            end
        end
        set
    end
end

list = [22,5,12,7,1,8,2]
InsertionSort.new(list).sort