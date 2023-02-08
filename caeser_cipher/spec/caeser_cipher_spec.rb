require_relative '../caeser_cipher'

RSpec.describe 'Ceaser Cipher' do
  describe 'lower case exercises' do
    it 'returns a string shifted by 5 values' do
      expect(caeser_cipher('hello world', 5)).to eq('mjqqt btwqi')
    end
  end

  describe 'upper case exercises' do
    it 'returns a string shifted by 5 values' do
      expect(caeser_cipher('HELLO WORLD', 5)).to eq('MJQQT BTWQI')
    end
  end

  describe 'mixed case exercises' do
    it 'returns a string shifted by 5 values' do
      expect(caeser_cipher('HeLlO WoRlD', 5)).to eq('MjQqT BtWqI')
    end
  end

  describe 'mixed case exercises with large shift <= 26' do
    it 'returns the original string due to shift by <= 26 values' do
      expect(caeser_cipher('THE quick BROWN fox JUMPED over THE lazy DOG', 26))
        .to eq('THE quick BROWN fox JUMPED over THE lazy DOG')
    end
  end

  describe 'mixed case exercises with large shift > 26' do
    it 'returns the original string due to shift by > 26 values' do
      expect(caeser_cipher('THE quick BROWN fox JUMPED over THE lazy DOG', 79))
        .to eq('UIF rvjdl CSPXO gpy KVNQFE pwfs UIF mbaz EPH')
    end
  end

  describe 'empty string exercises' do
    it 'returns an empty string' do
      expect(caeser_cipher('', 5)).to eq('')
    end
  end
end
