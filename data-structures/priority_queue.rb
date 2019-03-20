# Elementary priority queue
# Insert: O(1)
# Delete: O(n)

class PriorityQueue
    attr_reader :queue

    def initialize
        @queue = []
    end

    def insert(value)
        queue.push(value)
        puts "#{value} added to queue"
    end

    def delMin
        n = queue.size - 1
        max = 0
        0.upto(n) do |i|
            max = i if queue[i] > queue[max]
        end
        queue[n], queue[max] = queue[max], queue[n]
        value = queue.pop
        puts "#{value} removed from queue"
    end
end
