# frozen_string_literal: true

def stock_picker(arr)
  return [] if arr == arr.sort.reverse

  arr.each_with_index
     .to_a
     .combination(2)
     .max_by { |buy, sell| sell[0] - buy[0] }
     .map { |_profit, i| i }
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
p stock_picker([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
