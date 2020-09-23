# 数1406357289は0から9のパンデジタル数である (0から9が1度ずつ現れるので).
# この数は部分文字列が面白い性質を持っている.

# d1を上位1桁目,
# d2を上位2桁目の数とし,
# 以下順にdnを定義する. この記法を用いると次のことが分かる.

# d2d3d4=406 は 2 で割り切れる
# d3d4d5=063 は 3 で割り切れる
# d4d5d6=635 は 5 で割り切れる
# d5d6d7=357 は 7 で割り切れる
# d6d7d8=572 は 11 で割り切れる
# d7d8d9=728 は 13 で割り切れる
# d8d9d10=289 は 17 で割り切れる
# このような性質をもつ0から9のパンデジタル数の総和を求めよ.


@numbers = ('0'..'9').to_a

def pandigital?(n)
  arr = []
  n.to_s.each_char{|c| arr.push(c)}

  arr = arr.sort
  return true if arr == @numbers
  return false
end

def permutation(arr)
  return [] if arr.length == 0

  ret = []
  arr.each do |c|
    arr_copy = arr.dup
    arr_copy.delete(c)
    if arr_copy.length == 0
      ret.push(c)
    else
      permutation(arr_copy).each{ |str| ret.push(c.to_s+str)}
    end
  end
  return ret
end

puts "finished check all permutation of @numbers."

answer = 0
permutation(@numbers).each do |str|
  next if str.slice(0, 1) == "0"

  next if str.slice(1, 3).to_i % 2 != 0
  next if str.slice(2, 3).to_i % 3 != 0
  next if str.slice(3, 3).to_i % 5 != 0
  next if str.slice(4, 3).to_i % 7 != 0
  next if str.slice(5, 3).to_i % 11 != 0
  next if str.slice(6, 3).to_i % 13 != 0
  next if str.slice(7, 3).to_i % 17 != 0
  puts str
  answer = answer + str.to_i
end

puts answer.to_s