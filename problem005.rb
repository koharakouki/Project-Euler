# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

# 最小公倍数を求めれば良い

require 'prime'
prime_factors_array = Prime.each(20).to_a

prime_factors_index_array = prime_factors_array.map do |n|
  index = 0
  loop do
    index += 1
    break if 20 < n ** (index + 1)
  end
  n ** index
end

puts prime_factors_index_array.inject(:*)
#=> 232792560


自身と整数nの最小公倍数を求めるメソッド
puts [*1..20].inject(:lcm)