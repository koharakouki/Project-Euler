# 13195 の素因数は 5, 7, 13, 29 である.
# 600851475143 の素因数のうち最大のものを求めよ.
require 'prime'

# 素数を入れていく配列
array = []

max = 600851475143


# (1..max).each do |i|
# 	array.push(i) if i.prime? && max % i == 0
# end

# puts array.last
p 600851475143.prime_division.map(&:first).max