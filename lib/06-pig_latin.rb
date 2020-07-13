def phoneme(str)
    res = 0
    change = 0
    if str.match(/\Asch/i)
        pp "1"
        tmp = str[0..2]
       str[0..2] = ''
        return str + tmp + "ay"       
    elsif res =  str.index('qu')
        pp "6"
        tmp = str[res.. res + 1]
        str[res.. res + 1] = ''
       return str + tmp + "ay"
    end
    find_vowel(str)
end

def find_vowel(str)
    if str[0].match(/[^bcdfghjklmnpqrstvxz]/i)
       return str + "ay"
    end
    multiconsonne(str)
end

def multiconsonne(str)
     if str[0].match(/[bcdfghjklmnpqrstvxz]/i) && str[1].match(/[bcdfghjklmnpqrstvxz]/i) && str[2].match(/[bcdfghjklmnpqrstvxz]/i)
        tmp = str[0..2]
       str[0..2] = ''
     return  str + tmp + "ay"
     elsif str[0].match(/[bcdfghjklmnpqrstvxz]/i) && str[1].match(/[bcdfghjklmnpqrstvxz]/i)
        tmp = str[0..1]
       str[0..1] = ''
      return str + tmp + "ay"
    elsif str[0].match(/[bcdfghjklmnpqrstvxz]/i)
       return str.reverse + "ay"
     end
     str
end

def translate(str)

    tab = str.split(' ')
    tab.map { |word| phoneme(word)}.join(' ')

end


 pp translate("cherry")
