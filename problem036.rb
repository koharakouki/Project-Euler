
# 585 = 10010010012 (2進) は10進でも2進でも回文数である.
# 100万未満で10進でも2進でも回文数になるような数の総和を求めよ.
# (注: 先頭に0を含めて回文にすることは許されない.)


# 10進数の回文を判定
def palindrome_10(i)
	if i == i.to_s.reverse.to_i
		true
	end
end


# 2進数の回分を判定
def palindrome_2(i)
	if i.to_s(2) == i.to_s(2).reverse
		true
	end
end


sum = 0

(1..1000000).each do |i|
	if palindrome_10(i) && palindrome_2(i)
		sum += i
	end
end

p sum



# def palindrome? s
# 	s == s.reverse
# end

# sum = (1..1_000_000).inject(0) do |sum, n|
# 	sum += palindrome?(n.to_s) && palindrome?(n.to_s 2) ? n : 0
# end

# puts sum