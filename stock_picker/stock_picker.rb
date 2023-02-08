# frozen_string_literal: true

def stock_picker(arr)
  # arr1 = arr.each_with_index.to_a.combination(2).select {|buy, sell| buy[0] < sell[0]}
  # max_profit = arr1.collect {|elem| elem[1][0] - elem[0][0]}.max
  # arr1.find {|elem| elem[1][0] - elem[0][0] == max_profit}.map {|elem| elem[1]}
  arr.each_with_index
     .to_a
     .combination(2)
     .max_by { |buy, sell| sell[0] - buy[0] }.map { |_profit, i| i }
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
