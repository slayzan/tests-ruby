class Integer
    def magic_number
      self * 2 unless (self * 2 % 3).zero?
    end
  end

def who_is_bigger(n1,n2,n3)
    return "nil detected" if [n1, n2, n3].any?(&:nil?)
    tab = [n1,n2,n3].sort.last
    return "a is bigger" if tab == n1
    return "b is bigger" if tab == n2
    return "c is bigger" if tab == n3
end

def reverse_upcase_noLTA(string)
    string.reverse.upcase.delete "LTA"
end

def array_42(array)
    return false if array.index(42) == nil
    return true
end

def magic_array(array)
    array.flatten.sort.map(&:magic_number).uniq.compact
end