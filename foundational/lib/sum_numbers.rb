def sum_numbers(string)
  string.scan(/\d+/).map(&:to_i).inject(:+) || 0
end
