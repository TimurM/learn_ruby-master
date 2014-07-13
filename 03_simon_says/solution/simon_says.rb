def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, num = 2)
    result = []
    
    i = num
    while i > 0
        result.push(word)
        i -= 1
    end
    result.join(" ")
end

def start_of_word(word, num)
    word[0...num]
end

def first_word(str)
    str = str.split(" ")[0]
end

def titleize(str)
    str = str.split(" ")
    little_words = ["the", "over", "and", "a"]
    result = []
    
    str.each_with_index do |word, index|
        if index == 0
            result.push(word.capitalize)
        elsif little_words.include?(word)
            result.push(word)
        else
            result.push(word.capitalize)
        end
    end
    result.join(" ")
end
    