# イギリスでは硬貨はポンド£とペンスpがあり，一般的に流通している硬貨は以下の8種類である.

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

# 以下の方法で£2を作ることが可能である．

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

# これらの硬貨を使って£2を作る方法は何通りあるか?

# [1, 2, 5, 10, 20, 50, 100]
# この中から200になる方法を考える


# count = 0

# (0..200).each do |a|
#   (0..100).each do |b|
#     (0..40).each do |c|
#       (0..20).each do |d|
#         (0..10).each do |e|
#           (0..4).each do |f|
#             (0..2).each do |g|
#               if(a + (b*2) + (c * 5) + (d * 10) + (e * 20) + (f * 50) + (g * 100)) == 200
#                 p count += 1
#               end
#             end
#           end
#         end
#       end
#     end
#   end
# end

# p count + 1

def count_coins coins, target, last_coin = 0

	return 1 if target == 0
	total = 0

	coins.each do |c|
		next if c < last_coin
		total += count_coins(coins, target - c, c) if (target >= c)
	end

	total
end

puts count_coins(
	[1,2,5,10,20,50,100,200],
	200
)