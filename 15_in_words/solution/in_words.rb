class Fixnum

WORDS_HASH = {
	0 => 'zero',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 =>'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 =>'sixty',
    70 =>'seventy',
    80 => 'eighty',
    90 => 'ninety',
}

def in_words
    
	result = " "
    
    number = self
	
	result << "#{WORDS_HASH[number / 1_000_000_000_000]} trillion" if number.to_s.size > 12
	result << "#{convert_nums(number % 1_000_000_000_000 / 1_000_000_000)}billion" if number % 1_000_000_000_000 / 1_000_000_000 > 0
	result << "#{convert_nums(number % 1_000_000_000 / 1_000_000)}million" if number % 1_000_000_000 / 1_000_000 > 0
	result << "#{convert_nums(number % 1_000_000 / 1_000)}thousand" if number % 1_000_000 / 1000 > 0
	result << "#{convert_nums(number % 1000)}" if number % 1000 > 0
    result << "zero" if number == 0
	result.strip
end

def convert_nums(expression)
    
	result = " "
	result << "#{WORDS_HASH[expression / 100]} hundred " if expression / 100 > 0
	result << "#{WORDS_HASH[(expression % 100) - (expression % 10)]} " if (expression % 100) - (expression % 10) > 19
    result << "#{WORDS_HASH[expression % 100]} " if expression % 100 >= 10 && expression % 100 < 20
	result << "#{WORDS_HASH[expression % 10]} " if expression % 10 > 0 && (expression % 100 > 20 || expression % 100 < 10)
    result
    
end
end
