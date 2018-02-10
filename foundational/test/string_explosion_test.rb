require 'minitest/autorun'
require './lib/string_explosion'


class StringExplosionTest < Minitest::Test
  def test_explode
    assert_equal 'CCoCodCode', 'Code'.explode
    assert_equal 'aababc', 'abc'.explode
    assert_equal 'aab', 'ab'.explode
  end
end
