def translate(str)
    
    str = str.split(" ")
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ("a".."z").to_a - vowels
    edge_cases = ["sch", "qu"]
    new_str = []

    
    str.each do |word|
         
        if vowels.include?(word[0])
           new_str << word + "ay"
        elsif edge_cases.include?(word[0..1])
            new_str << word[2..-1] + word[0..1] + "ay"
        elsif edge_cases.include?(word[0..2]) || edge_cases.include?(word[1..2])
            new_str << word[3..-1] + word[0..2] + "ay"
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
            new_str << word[3..-1] + word[0..2] + "ay"
        elsif consonants.include?(word[0]) && consonants.include?(word[1])
            new_str << word[2..-1] + word[0..1] + "ay"
        elsif consonants.include?(word[0])
            new_str << word[1..-1] + word[0] + "ay"
        else
            new_str << word
        end
    end
    
   
    return new_str.join(" ")
end
