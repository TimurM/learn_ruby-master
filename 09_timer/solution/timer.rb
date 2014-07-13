class Timer
    attr_accessor :seconds
    
def seconds
    @seconds = 0
end

def time_string
    result = Time.new(0) + @seconds
    result = result.to_s.split(" ")
    result[1]
end
end
