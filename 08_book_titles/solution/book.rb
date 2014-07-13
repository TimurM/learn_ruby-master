
class Book
    
    attr_accessor :title
    
    
    def title
        
        exceptions = ["the", "a", "an", "and", "in", "of"]
        
        title = @title.split(" ")
        
        title = title.map do |word|
            
            if word == title[0]
               title[0] = title[0].capitalize
            elsif exceptions.include?(word)
                word
            else
                word.capitalize
            end
        end
        title.join(" ")
    end

end


