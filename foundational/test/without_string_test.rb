require 'minitest/autorun'
require './lib/without_string'

class WithoutStringTest < Minitest::Test
  def test_without_string
    assert_equal 'He there', without_string('Hello there', 'llo')
    assert_equal 'Hllo thr', without_string('Hello there', 'e')
    assert_equal 'Hello there', without_string('Hello there', 'x')
    assert_equal 'Th  a FH', without_string('This is a FISH', 'IS')
    assert_equal 'Th  a FH', without_string('This is a FISH', 'is')
    assert_equal 'Th  a FH', without_string('This is a FISH', 'iS')
    assert_equal 'abab', without_string('abxxxxab', 'xx')
    assert_equal 'abxab', without_string('abxxxab', 'xx')
  end
end
