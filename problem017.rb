# 1 から 5 までの数字を英単語で書けば one, two, three, four, five であり, 全部で 3 + 3 + 5 + 4 + 4 = 19 の文字が使われている.
# では 1 から 1000 (one thousand) までの数字をすべて英単語で書けば, 全部で何文字になるか.
# 注: 空白文字やハイフンを数えないこと. 例えば, 342 (three hundred and forty-two) は 23 文字,
# 115 (one hundred and fifteen) は20文字と数える. なお, "and" を使用するのは英国の慣習.

# 数字を英語に変換するメソッドを使えばできそう
# 無かった。。。。


class Integer
  def to_l
    case self
    when 1
      'one'
    when 2
      'two'
    when 3
      'three'
    when 4
      'four'
    when 5
      'five'
    when 6
      'six'
    when 7
      'seven'
    when 8
      'eight'
    when 9
      'nine'
    when 10
      'ten'
    when 11
      'eleven'
    when 12
      'twelve'
    when 13
      'thirteen'
    when 14
      'fourteen'
    when 15
      'fifteen'
    when 16
      'sixteen'
    when 17
      'seventeen'
    when 18
      'eighteen'
    when 19
      'nineteen'
    when 20
      'twenty'
    when 30
      'thirty'
    when 40
      'forty'
    when 50
      'fifty'
    when 60
      'sixty'
    when 70
      'seventy'
    when 80
      'eighty'
    when 90
      'ninety'
    when (21..99)
      quotient, remainder = divmod(10)
      tens_place = quotient * 10
      tens_place.to_l + '-' + remainder.to_l
    when (100..999)
      quotient, remainder = divmod(100)
      if remainder.zero?
        quotient.to_l + ' hundred'
      else
        quotient.to_l + ' hundred and ' + remainder.to_l
      end
    when 1000
      'one thousand'
    end
  end
end

def number_letter_counts(from:, to:)
  (from..to).map(&:to_l).map { |i| i.gsub(/-|\s/, '') }.map(&:size).inject(&:+)
end

puts number_letter_counts(from: 1, to: 1000)