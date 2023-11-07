# frozen_string_literal: true

# 18ホールの規定打数
par = gets.split(',').map(&:to_i)

# プレイヤーの打数
attempt = gets.split(',').map(&:to_i)

score = []

SCORE_MAPPING = {
  1 => 'ボギー',
  0 => 'パー',
  -1 => 'バーディ',
  -2 => 'イーグル',
  -3 => 'アルバトロス',
  -4 => 'コンドル'
}

par.zip(attempt) do |a, b|
  gap = b - a
  score << if [3, 4].include?(a) && b == 1
             'ホールインワン'
           elsif gap >= 2
             "#{gap}ボギー"
           else
             SCORE_MAPPING[gap]
           end
end

puts score.join(',')
