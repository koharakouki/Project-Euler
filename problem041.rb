
# n桁パンデジタルであるとは, 1からnまでの数を各桁に1つずつ持つこととする.
# #下のリンク先にあるような数学的定義とは異なる
# 例えば2143は4桁パンデジタル数であり, かつ素数である.
#  n桁（この問題の定義では9桁以下）パンデジタルな素数の中で最大の数を答えよ.

require 'prime'

# answer = []

# (1..1000000).each do |i|
# 	if Prime.prime?(i)
# 		array = i.to_s.split('')
# 		if (array.length == array.uniq.length) && (array.sort == (1..array.size).to_a.map(&:to_s))
# 			answer << array.join.to_i
# 		end
# 	end
# end

# p answer.sort.last


def pandigital(i)
	array = i.to_s.split('')
	array.length == array.uniq.length && array.sort == (1..array.size).to_a.map(&:to_s)
end

answer = []

(1000000..7654321).each do |i|
	if i.prime? && pandigital(i)
		answer << i
	end
end

p answer.max