# frozen_string_literal: true

require_relative '../bubble_sort'

RSpec.describe 'Bubble Sort' do
  describe 'valid tests' do
    it 'returns sorted list when list is unsorted' do
      expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
    end

    it 'returns sorted list when list is already sorted' do
      expect(bubble_sort([0, 2, 2, 3, 4, 78])).to eq([0, 2, 2, 3, 4, 78])
    end
  end
end
