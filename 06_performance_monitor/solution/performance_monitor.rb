def measure(n = 1)
    
    start_time = Time.now
    
    n.times do
        yield
    end
    
    end_time = Time.now
    
    total = end_time - start_time
    average_time = total / n
end
