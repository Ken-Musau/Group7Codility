def two_sum(nums, target)
  num_hash = {}

  nums.each_with_index do |num, index|
    complement = target - num

    if num_hash.key?(complement)
      return [num_hash[complement], index]
    end

    num_hash[num] = index
  end
end

nums = [3, 2, 4]
target = 6

puts two_sum(nums, target)
