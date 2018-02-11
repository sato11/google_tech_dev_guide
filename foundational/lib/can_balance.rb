def can_balance(nums)
  nums.each.with_index(1).any? do |num, idx|
    nums.first(idx).inject(:+) == nums.last(nums.length - idx).inject(:+)
  end
end
