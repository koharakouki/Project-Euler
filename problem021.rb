# d(n) を n の真の約数の和と定義する. (真の約数とは n 以外の約数のことである. )
# もし, d(a) = b かつ d(b) = a (a ≠ b のとき) を満たすとき, a と b は友愛数(親和数)であるという.

# 例えば, 220 の約数は 1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110 なので d(220) = 284 である.
# また, 284 の約数は 1, 2, 4, 71, 142 なので d(284) = 220 である.

# それでは10000未満の友愛数の和を求めよ.

require 'prime'

# 約数の和からnを引いた値を返すメソッド
# def sum_divisors(n)
#   (Prime.prime_division(n).map {|p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)) - n
# end


def sum_divisors(num)
  (1..num).select{|i| num % i == 0 && num != i}.sum
end


sum = 0

1.upto(9999) do |i|
	div_a = sum_divisors(i)
	div_b = sum_divisors(div_a)
	if div_b == i && i != div_a
		sum += i
	end
end

p sum