# Trie
# Insert: O(n)
# Search: O(n)
# where n is the length of the given input

class Trie
    attr_accessor :trie

    def initialize
        @trie={}
    end

    def insert(word)
        t=@trie
        word.each_char do |c|
            t[c]={} if t[c].nil?
            t=t[c]
        end
        t['#']='#'
    end

    def search(word)
        t=@trie
        word.each_char do |c|
            return false if t[c].nil?
            t=t[c]
        end
        return true if t['#'] == '#'
        false
    end
end
