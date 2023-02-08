require_relative '../sub_strings'

RSpec.describe 'Sub Strings' do
  describe 'lower case' do
    it 'finds expected words' do
      words = ['good', 'morning', 'hello', 'world']
      expect(sub_strings("hello world", words)).to eq({"hello" => 1, "world" => 1})
    end
  end

  describe 'upper case' do
    it 'finds expected words' do
      words = ['good', 'morning', 'hello', 'world']
      expect(sub_strings("HELLO WORLD", words)).to eq({"hello" => 1, "world" => 1})
    end
  end
  
  describe 'mixed case' do
    it 'finds expected words' do
      words = ['good', 'morning', 'hello', 'world']
      expect(sub_strings("Hello World", words)).to eq({"hello" => 1, "world" => 1})
    end
  end

  describe 'empty string' do
    it 'finds expected words' do
      words = ['good', 'morning', 'hello', 'world']
      expect(sub_strings("Hello World", words)).to eq({"hello" => 1, "world" => 1})
    end
  end
end