# frozen_string_literal: true

def bubble_sort(arr)
  swap = false
  arr.each_with_index do |x, index|
    break if index >= arr.length - 1
    next unless x > arr[index + 1]

    swap = true
    arr[index] = arr[index + 1]
    arr[index + 1] = x
  end
  swap ? bubble_sort(arr) : arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
