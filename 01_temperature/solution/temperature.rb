def ftoc(num)

	if num == 32
		return 0 
	else 
		return (num - 32.0) * 5.0 / 9.0
	end 
end 

def ctof(num)

	if num == 0 
		return 32
	else 
		return (num * 9.0 / 5.0 + 32.0)
	end 
end 