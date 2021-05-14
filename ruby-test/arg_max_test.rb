# frozen_string_literal: true

require_relative 'arg_max'

RSpec.describe 'returnmax' do
  context 'When sent array to function' do
    it 'return a integer class' do
      _max = arg_max([4, 5, 6, 7])
      expect(_max).to be_a(Integer)
    end
  end

  it 'send array to function an validate index of max is latest' do
    _max = arg_max([4, 5, 6, 7])
    expect(_max).to eq(3)
  end

  it 'send array to function an validate index of max' do
    _max = arg_max([4, 5, 6, 7, 2, 1, 0])
    expect(_max).to eq(3)
  end

  it 'send void array to function an validate index of max' do
    _max = arg_max([])
    expect(_max).to be_nil
  end

  it 'return max of index' do
    _max = arg_max([1, 2, 3, 4, 2, 3, 4, 1])
    expect(_max).to eq(6)
  end
end
