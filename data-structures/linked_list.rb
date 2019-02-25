class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList
    def initialize
        @head = nil
    end

    #prepend adds a new node to the start of the list
    def prepend(value)
        @head = Node.new(value, @head)
    end

    #append adds a new node to the end of the list
    def append(value)
        node = Node.new(value)
        if @head.nil?
            @head = node
        else
            current = @head
            while (current.next_node != nil)
                current = current.next_node
            end
            current.next_node = node
        end
    end

    #size returns the total number of nodes in the list
    def size
        count = 0
        current = @head
        while (!current.nil?)
            count += 1
            current = current.next_node
        end
        count
    end

    #head returns the first node in the list
    def head
        @head
    end

    #tail returns the last node in the list
    def tail
        current = @head
        while (current.next_node != nil)
            current = current.next_node
        end
        current
    end

    #at returns the node at the given index
    def at(index)
        return nil if index >= size
        current = @head
        i = 0
        while (i != index)
            current = current.next_node
            i += 1
        end
        current
    end

    #pop removes the last element from the list
    def pop
        current = @head
        until (current.next_node.next_node.nil?)
            current = current.next_node
        end
        current.next_node = nil
    end

    #contains? returns true if the passed in value is in the list and otherwise returns false.
    def contains?(value)
        current = @head
        while (!current.nil?)
            return true if current.value == value
            current = current.next_node
        end
        false
    end

    #find returns the index of the node containing value, or nil if not found.
    def find(value)
        index = 0
        current = @head
        while (!current.nil?)
            puts index if current.value == value
            current = current.next_node
            index += 1
        end
        nil
    end

    #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. 
    #The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    def to_s
        current = @head
        output = ""
        while (!current.nil?)
            output += " ( #{current.value} ) -> "
            current = current.next_node
        end
        puts output + "nil"
    end

    #insert_at that inserts the node at the given index
    def insert_at(index, value)
        return nil if index > size
        return prepend(value) if index == 0
        node = Node.new(value)
        current = at(index-1)
        node.next_node = current.next_node
        current.next_node = node
    end

    #remove_at that removes the node at the given index.
    def remove_at(index)
        return nil if index >= size
        return @head = @head.next_node if index == 0
        current = at(index-1)
        current.next_node = current.next_node.next_node
    end
end
