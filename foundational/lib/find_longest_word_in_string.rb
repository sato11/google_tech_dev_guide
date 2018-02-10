def find_longest_word_in_string(string, dictionary)
  subsequences = dictionary.select { |word| subsequence?(string, word) }
  pick_longest_word(subsequences)
end

private

def subsequence?(string, word)
  string_chars = string.chars
  word.chars.map do |letter|
    next unless matched_index = string_chars.index(letter)
    0.upto(matched_index) { |i| string_chars[i] = nil }
    matched_index
  end.all?
end

def pick_longest_word(array)
  array.inject do |longest, candidate|
    longest.length > candidate.length ? longest : candidate
  end
end
