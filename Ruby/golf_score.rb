# 18ホールの規定打数
par = gets.split(',').map(&:to_i)

# プレイヤーの打数
attempt = gets.split(',').map(&:to_i)

score = []

(0..17).each do |hole|
  par_of_hole = par[hole]
  attempt_of_hole = attempt[hole]
  gap = attempt_of_hole.to_i - par_of_hole.to_i

  if gap >= 2
    score << gap.to_s + 'ボギー'
  elsif gap == 1
    score << 'ボギー'
  elsif gap.zero?
    score << 'パー'
  elsif gap == -1
    score << 'バーディ'
  elsif gap == -2 && attempt_of_hole != 1
    score << 'イーグル'
  elsif gap == -3 && attempt_of_hole != 1
    score << 'アルバトロス'
  elsif par_of_hole == 5 && attempt_of_hole == 1
    score << 'コンドル'
  elsif attempt_of_hole == 1
    score << 'ホールインワン'
  end

end

puts score.join(',')
