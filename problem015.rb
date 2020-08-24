# 格子の経路、20 * 20 のパターンは何通りか？
# 2 * 2の場合：→２個、↓２個 4!/2!*2! = 6

# 階乗の計算をどう表現するか？

# numberに数字を入れるとその階乗を返すメソッド
def factorial(number)
	(1..number).inject(:*)
end

num = 20

p factorial(num + num) / (factorial(num) * factorial(num))


