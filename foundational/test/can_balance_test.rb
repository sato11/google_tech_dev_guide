require 'minitest/autorun'
require './lib/can_balance'

class CanBalanceTest < Minitest::Test
  def test_can_balance
    assert can_balance([1, 1, 1, 2, 1])
    refute can_balance([2, 1, 1, 2, 1])
    assert can_balance([10, 10])
    assert can_balance([10, 0, 1, -1, 10])
    assert can_balance([1, 1, 1, 1, 4])
    refute can_balance([2, 1, 1, 1, 4])
    assert can_balance([1, 2, 3, 1, 0, 2, 3])
    refute can_balance([1, 2, 3, 1, 0, 1, 3])
  end
end
