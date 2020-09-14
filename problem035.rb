# 197は巡回素数と呼ばれる. 桁を回転させたときに得られる数 197, 971, 719 が全て素数だからである.

# 100未満には巡回素数が13個ある: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, および97である.

# 100万未満の巡回素数はいくつあるか?


# 数字を引数に渡して、その数字を回転させた全通りを配列に入れて一つずつ素数か判定する
# 1..1000000の中で素数のみ配列に入れる
# 1..1000000までの素数の配列を全てループさせて作ったメソッドの引数に入れていく

require 'prime'
@prime_array = []

# rotateした結果を配列に投入し、全部素数か判定するメソッド
def patrol(num)
  patrol = num.to_s.split("")
  result = (1..patrol.length).map{|i|patrol.rotate(i).join.to_i}.uniq
  result_array = []
  # 判定用
  result.each do |i|
    result_array.push(Prime.prime?(i))
  end
    @prime_array.push(num) unless result_array.include?(false)
end

# 2~999999までloopを回し1個ずつ判定
(2..999999).each do |num|
  patrol(num)
end

p @prime_array.uniq.length