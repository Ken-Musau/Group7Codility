# Write a function:
# function solution(A) that,
# given an array A consisting of N integers, returns the maximum among all integers which are multiples of 4.For example, given array A as follows:[-6, -91, 1011, -100, 84, -22, 0, 1, 473]the function should return 84.

def max_multiple_of_four(n)
  n.select { |num| num % 4 == 0 }.max
end

arr = [-6, -91, 1011, -100, 84, -22, 0, 1, 473]
puts max_multiple_of_four(arr)
