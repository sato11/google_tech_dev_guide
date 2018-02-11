require 'minitest/autorun'
require './lib/maxspan'

class MaxspanTest < Minitest::Test
  def test_maxspan
    assert_equal 4, maxspan([1, 2, 1, 1, 3])
    assert_equal 6, maxspan([1, 4, 2, 1, 4, 1, 4])
    assert_equal 6, maxspan([1, 4, 2, 1, 4, 4, 4])
    assert_equal 3, maxspan([3, 3, 3])
    assert_equal 3, maxspan([3, 9, 3])
    assert_equal 2, maxspan([3, 9, 9])
    assert_equal 1, maxspan([3, 9])
    assert_equal 2, maxspan([3, 3])
    assert_equal 0, maxspan([])
    assert_equal 1, maxspan([1])
  end
end
