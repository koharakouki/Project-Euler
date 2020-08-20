# 10以下の素数の和は 2 + 3 + 5 + 7 = 17 である.
# 200万以下の全ての素数の和を求めよ.

require 'prime'

max = 2000000

sum = 0

(1..max).each do |int|
  if int.prime?
  	sum += int
  end
end

p sum

# これでもいける
# p Prime.each(2000000).to_a.sum

