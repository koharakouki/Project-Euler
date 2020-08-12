# フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.

# 項の値が100以下の場合、繰り返し処理を続ける。

# 数列を入れる配列を作る
# array = []

# # 偶数値の項の総和
# sum = 0

# i = 0


# while array[i] < 100 do
# 	if i == 0
# 		array[i] = 1
# 		i++
# 	# elsif i == 1
# 	# 	array[i] = 2
# 	# 	sum += array[i]
# 	# 	i++
# 	else
# 		array[i] = array[i-1] + array[i-2]
# 		if array[i] % 2 == 0
# 			sum += array[i]
# 		end
# 		i++
# 	end
# end

# puts sum



max = 4000000
a, b = 2, 3
sum = 2

while (c = a + b) < max do
	sum += c if c % 2 == 0
  a, b = b, c
end

puts sum
