# 辺の長さが {a,b,c} と整数の3つ組である直角三角形を考え,
# その周囲の長さを p とする. p = 120のときには3つの解が存在する:

# {20,48,52}, {24,45,51}, {30,40,50}

# p ≤ 1000 のとき解の数が最大になる p はいくつか?

# a**2 + b**2 = c**2

kome = []

(1..500).each do |i|
	(1..500).each do |j|
		(1..500).each do |k|
			if i**2 + j**2 == k**2 && i + j + k <= 1000
				array = []
				array << i
				array << j
				array << k
				kome << array
			end
		end
	end
end

sum = 0

kome.sort.last.each do |i|
  sum += i
end

p sum



