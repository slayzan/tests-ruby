def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word,nb)
    Array.new(nb, word).join(' ')
end

def start_of_word(str,nb)
    str[0,nb]
end

def first_word(str)
    str.split(' ').first
end

def titleize(string)
	string.capitalize.split.map {|x| x.length > 3 ? x.capitalize : x}.join(' ')
end