# 辺の長さが {a,b,c} と整数の3つ組である直角三角形を考え,
# その周囲の長さを p とする. p = 120のときには3つの解が存在する:

# {20,48,52}, {24,45,51}, {30,40,50}

# p ≤ 1000 のとき解の数が最大になる p はいくつか?

# a**2 + b**2 = c**2

# kome = []

# (1..500).each do |i|
# 	(1..500).each do |j|
# 		(1..500).each do |k|
# 			if i**2 + j**2 == k**2 && i + j + k <= 1000
# 				array = []
# 				array << i
# 				array << j
# 				array << k
# 				kome << array
# 			end
# 		end
# 	end
# end

# sum = 0

# kome.sort.last.each do |i|
#   sum += i
# end

# p kome.sort.last
# p sum





answer = 0
answer_stack = []
answer_p = 0

3.step(1000) do |p|
  stack = []

  # a <= b <= c
  1.step((p/3).floor) do |a|

    b = a
    loop do
      c = p-a-b
      if a*a + b*b == c*c
        stack.push([a, b, c])
      end

      b = b + 1
      break if p-a-b < b
    end
  end

  if answer < stack.length
    answer = stack.length
    answer_stack = stack
    answer_p = p
  end
end

puts answer.to_s
puts answer_stack.to_s
puts answer_p.to_s
