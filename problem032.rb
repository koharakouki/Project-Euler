# すべての桁に 1 から n が一度だけ使われている数をn桁の数がパンデジタル (pandigital)
# であるということにしよう: 例えば5桁の数 15234 は1から5のパンデジタルである.
# 7254 は面白い性質を持っている. 39 × 186 = 7254 と書け, 掛けられる数, 掛ける数, 積が1から9のパンデジタルとなる.
# 掛けられる数/掛ける数/積が1から9のパンデジタルとなるような積の総和を求めよ.
# HINT: いくつかの積は, 1通り以上の掛けられる数/掛ける数/積の組み合わせを持つが1回だけ数え上げよ.


def pandegital?(result)
  num_chk = (1..9).to_a
  result_chk = result.split("").map(&:to_i).sort

  num_chk == result_chk ? true : false
end


answer = []

(1..100000).each do |x|
  (1..100000).each do |y|
    result = x.to_s + y.to_s + (x * y).to_s
    if result.size == 9 && pandegital?(result)
      answer.push(x * y)
      break
    elsif result.size >= 10
      break
    end
  end
end

p answer.uniq.sum



digits = 9

ans = []
(1..digits).to_a.permutation(digits) do |a|
  0.upto(digits - 3) do |i|
    i.upto(digits - 3) do |j|
      x = a[0..i].join.to_i
      y = a[(i + 1)..(j + 1)].join.to_i
      z = a[(j + 2)..(digits - 1)].join.to_i
      if x * y == z
        p "#{x} * #{y} = #{z}"
        ans << z 
      end
    end
  end
end

p ans.uniq.inject(:+)