# 左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.
# では, 3桁の数の積で表される回文数の最大値を求めよ.

array = []

(100..999).each do |int1|
	(100...999).each do |int2|
		palindrome = int1 * int2
		if palindrome == palindrome.to_s.reverse.to_i
			array.push(palindrome)
		end
	end
end

puts array.map(&:to_i).max




