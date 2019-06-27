require 'middle'

describe Middle do
  it 'returns an empty string' do
    middle = Middle.new
    expect(middle.getMiddle('')).to eq('')
  end

  it 'returns the middle letter' do
    middle = Middle.new
    expect(middle.getMiddle('tests')).to eq('s')
  end
end