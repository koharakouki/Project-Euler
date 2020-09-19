# 正の整数を順に連結して得られる以下の10進の無理数を考える:

# 0.123456789101112131415161718192021...
# 小数第12位は1である.

# dnで小数第n位の数を表す.
# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000 を求めよ


# 一から順番に数字を連結させていく
answer = ""

(1..1000000).each do |i|
	if answer.length <= 1000000
		answer += i.to_s
	end
end

# p answer

array = answer.split('')

p array[0].to_i * array[9].to_i * array[99].to_i * array[999].to_i * array[9999].to_i * array[99999].to_i * array[999999].to_i



