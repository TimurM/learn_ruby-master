class Dictionary
    attr_accessor :check_word, :word
    
    def initialize
        @str = {}
    end
  
    def entries
     @str
    end
  
    def add(opt={})
        if opt.class == Hash
            @str.merge!(opt)
        elsif opt.class == String
            @str[opt] = nil
        end
    end
    
    def keywords
        @str.keys.sort
    end
    
    def include?(check_word)
        if self.entries.include?(check_word)
            true
        else
            false
        end
    end
    
    def find(word)
        hash = {}
        
        @str.each do |key, value|
            
            hash[key] = value if key.index(word) == 0
        end
        hash
    end
    
    def printable
        array = []
        @str.sort.each do |key, value|
            array << ("[#{key}] \"#{value}\"\n")
        end
        array = array.join("").strip
    end
    
end

