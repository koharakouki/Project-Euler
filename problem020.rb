# n × (n - 1) × ... × 3 × 2 × 1 を n! と表す.

# 例えば, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800 となる.
# この数の各桁の合計は 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27 である.

# では, 100! の各位の数字の和を求めよ.

sum = 1

def factorial(num)
  (1..num).inject(:*)
end

# p factorial(100)

factorial_number = factorial(100)

p factorial_number.to_s.split('').map(&:to_i).sum