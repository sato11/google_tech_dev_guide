def maxspan(nums)
  maxspan = 0
  nums.each.with_index do |num, i|
    j = nums.length - 1
    j -= 1 while nums[i] != nums[j]
    span = j - i + 1
    maxspan = span if maxspan < span
  end
  maxspan
end
