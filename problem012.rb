# 三角数の数列は自然数の和で表わされ, 7番目の三角数は 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28 である. 三角数の最初の10項は:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# となる.
# 最初の7項について, その約数を列挙すると, 以下のとおり.
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# これから, 7番目の三角数である28は, 5個より多く約数をもつ最初の三角数であることが分かる.
# では, 500個より多く約数をもつ最初の三角数はいくつか.

# require 'prime'

# n = 2
# result = 0

# # 三角数の計算
# def triangle_number(n)
# 	n * (n + 1) / 2
# end

# # p triangle_number(5)

# # 約数の個数を求める
# def divisor_count(n)
# 	Prime.prime_division(n).map(&:last).map{ |i| i + 1 }.inject(:*)
# end


# until divisor_count(n) >= 500
# 	result = divisor_count(n)
# 	n += 1
# end

# p result


require 'prime'

def triangle_number(n)
  n * (n + 1) / 2
end

def divisor_count(n)
  Prime.prime_division(n).map(&:last).map{ |i| i + 1 }.inject(:*)
end

n = 2
loop do
  result = triangle_number(n)
  break if divisor_count(result) > 500
  n += 1
end

puts triangle_number(n)