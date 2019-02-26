class Node
    attr_accessor :left, :right, :value

    def initialize(value)
        @value = value
        @left, @right = nil
    end
end

class BinarySearchTree
    attr_accessor :root

    def initialize
        @root = nil
    end

    def insert(value)
        if @root.nil?
            @root = Node.new(value)
        else
            add(@root, value)
        end
    end

    def delete(value)
        return @root if @root.nil?
        remove(@root, value)
    end

    def search(value)
        current = @root
        while (!current.nil?)
            if value == current.value
                return current
            elsif value < current.value
                current = current.left
            elsif value > current.value
                current = current.right
            else
                return nil
            end
        end
    end

    def inorder(node=@root)
        return if node.nil?
        inorder(node.left)
        print " #{node.value} "
        inorder(node.right)
    end

    def preorder(node=@root)
        return if node.nil?
        print " #{node.value} "
        preorder(node.left)
        preorder(node.right)
    end

    def postorder(node=@root)
        return if node.nil?
        postorder(node.left)
        postorder(node.right)
        print " #{node.value} "
    end

    private

    def add(node, new_value)
        return node if new_value == node.value

        if new_value < node.value 
            node.left = Node.new(new_value) if node.left.nil?
            add(node.left, new_value)
        elsif new_value > node.value
            node.right = Node.new(new_value) if node.right.nil?
            add(node.right, new_value)
        end
    end

    def remove(node, value)
        if value < node.value
            node.left = remove(node.left, value)
        elsif value > node.value
            node.right = remove(node.right, value)
        else
            # No children
            if node.left.nil? && node.right.nil?
                node = nil
            # One child
            elsif node.left.nil?
                node = node.right
                node.right = nil
            elsif node.right.nil?
                node = node.left
                node.left = nil
            # Two child
            else
                temp = find_min(node.right)
                node.value = temp.value
                node.right = remove(node.right, temp.value)
            end
        end
        return node
    end

    def find_min(node)
        if node.left
            find_min(node.left) 
        else
            node
        end
    end
end
