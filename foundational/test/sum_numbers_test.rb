require 'minitest/autorun'
require './lib/sum_numbers'

class SumNumbersTest < Minitest::Test
  def test_sum_numbers
    assert_equal 123, sum_numbers("abc123xyz")
    assert_equal 44, sum_numbers("aa11b33")
    assert_equal 18, sum_numbers("7 11")
    assert_equal 0, sum_numbers("Chocolate")
    assert_equal 7, sum_numbers("5hoco1a1e")
    assert_equal 7, sum_numbers("5$$1;;1!!")
    assert_equal 0, sum_numbers("0")
  end
end
