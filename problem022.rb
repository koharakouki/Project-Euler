# 5000個以上の名前が書かれている46Kのテキストファイル names.txt を用いる. まずアルファベット順にソートせよ.
# のち, 各名前についてアルファベットに値を割り振り, リスト中の出現順の数と掛け合わせることで, 名前のスコアを計算する.
# たとえば, リストがアルファベット順にソートされているとすると, COLINはリストの938番目にある.
# またCOLINは 3 + 15 + 12 + 9 + 14 = 53 という値を持つ. よってCOLINは 938 × 53 = 49714 というスコアを持つ.
# ファイル中の全名前のスコアの合計を求めよ.

array = []

file = File.open("names.txt", "r") { |f| f.read.gsub('"','').split(",") }.sort

sum = 0
code = 'A'.bytes.to_a[0] - 1

file.each_with_index do |n, i|
	s = 0
	n.each_byte { |x| s += x - code }
	sum += (i+1) * s
end

p sum