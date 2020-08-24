# 正の整数に以下の式で繰り返し生成する数列を定義する.
# n → n/2 (n が偶数)
# n → 3n + 1 (n が奇数)
# 13からはじめるとこの数列は以下のようになる.
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 13から1まで10個の項になる. この数列はどのような数字からはじめても最終的には 1 になると考えられているが,
# まだそのことは証明されていない(コラッツ問題)
# さて, 100万未満の数字の中でどの数字からはじめれば最長の数列を生成するか.
# 注意: 数列の途中で100万以上になってもよい

# nが偶数の場合、奇数の場合でそれぞれifで分岐して数列の長さを求めるメソッド
def collatz_sequence(number: , count:)
	if number == 1
		count += 1
	elsif number.even?
		collatz_sequence(number: number / 2, count: count += 1)
	else
		collatz_sequence(number: 3 * number + 1, count: count += 1)
	end
end

result_hash = { longest_chain_count: 0, answer: 0 }

(1..10).each do |number|
	calculation = collatz_sequence(number: number, count: 0)
	p calculation
	if result_hash[:longest_chain_count] < calculation
		result_hash[:longest_chain_count] = calculation
		result_hash[:answer] = number
	end
end

p result_hash