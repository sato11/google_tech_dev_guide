require 'minitest/autorun'
require './lib/find_longest_word_in_string'

class FindLongestWordInStringTest < Minitest::Test
  def setup
    @string = 'abppplee'
    @dictionary = ['able', 'ale', 'apple', 'bale', 'kangaroo']
  end

  def test_find_longest_word_in_string
    assert_equal 'apple', find_longest_word_in_string('apple', @dictionary)
    assert_equal 'apple', find_longest_word_in_string(@string, @dictionary)
  end

  def test_pick_longest_word
    assert_equal 'apple', pick_longest_word(["ale", "apple"])
    assert_equal 'very_very_long_string', pick_longest_word(["very_very_long_string", "very_long_string", "short_string"])
  end

  def test_subsequence?
    assert subsequence?(@string, 'able')
    assert subsequence?(@string, 'apple')
    refute subsequence?(@string, 'bale')
    refute subsequence?(@string, 'kangaloo')
  end
end
