class Temperature
    #instance methods
    def initialize(opt = {})
        @temp_hash = opt
    end
    
    def in_fahrenheit
        @temp_hash.each do |key, value|
            if key == :f
                return value
            elsif key == :c
                return value * 9.0 / 5.0 + 32.0
            end
        end
    end
    
    def in_celsius
        @temp_hash.each do |key, value|
            if key == :c
                return value
            elsif key == :f
                return (value - 32.0) * 5.0 / 9.0
            end
        end
    end
   
   #class methods
   
    def self.from_celsius(degrees)
        Temperature.new(:c => degrees)
    end
    
    def self.from_fahrenheit(degrees)
        Temperature.new(:f => degrees)
    end
   
end

class Celsius < Temperature
    
    def initialize(n)
        @temp_hash = Hash.new
        @temp_hash[:c]= n
    end
end

class Fahrenheit < Temperature
    
    def initialize(n)
        @temp_hash = Hash.new
        @temp_hash[:f]= n
    end
end









