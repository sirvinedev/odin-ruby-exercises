require_relative "../stock_picker"

RSpec.describe 'Stock Picker' do
  describe 'valid tests' do
    it 'finds correct indexes' do
      expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    end

    it 'finds correct indexes when lowest day is last and highest day is first' do
      expect(stock_picker([1, 15, 4, 3, 4, 5, 18, 4, 20])).to eq([0, 8])
    end

    it 'finds correct indexes when you can to buy before you can sell' do
      expect(stock_picker([8, 22, 4, 5, 4, 5, 12, 11, 6, 19, 8])).to eq([2, 9])
    end
  end
end