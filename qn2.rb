def longest_consecutive(nums)
  nums = nums.uniq.sort
  longest_streak = 0
  current_streak = 0

  nums.each_with_index do |num, i|
    if i > 0 && num == nums[i - 1] + 1
      current_streak += 1
    elsif i == 0 || num != nums[i - 1] + 1
      longest_streak = [longest_streak, current_streak].max
      current_streak = 1
    end
  end

  [longest_streak, current_streak].max
end

nums = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
puts longest_consecutive(nums)
