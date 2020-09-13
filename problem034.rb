# 49/98は面白い分数である.「分子と分母からそれぞれ9を取り除くと,
# 49/98 = 4/8 となり, 簡単な形にすることができる」と
# 経験の浅い数学者が誤って思い込んでしまうかもしれないからである.
#  (方法は正しくないが，49/98の場合にはたまたま正しい約分になってしまう．)

# 我々は 30/50 = 3/5 のようなタイプは自明な例だとする.

# このような分数のうち, 1より小さく分子・分母がともに2桁の数になるような自明でないものは, 4個ある.

# その4個の分数の積が約分された形で与えられたとき, 分母の値を答えよ.


require 'rational'
def fake_reduction?(numerator, denominator)
  ("1".."9").each do |m|
    next if !numerator.include?(m) || !denominator.include?(m)
    n, d = numerator.delete(m), denominator.delete(m)
    next if n == "0" || d == "0" || n == "" || d == ""
    real_fraction = Rational(numerator.to_i, denominator.to_i)
    fake_fraction = Rational(n.to_i, d.to_i)
    return true if real_fraction == fake_fraction
  end
  false
end
result = Rational(1, 1)
12.upto(99) do |d|
  10.upto(d-1) do |n|
    result *= Rational(n, d) if fake_reduction?(n.to_s, d.to_s)
  end
end
puts result.denominator