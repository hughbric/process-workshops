require 'middle'

describe Middle do
  it 'returns an empty string' do
    middle = Middle.new
    expect(middle.getMiddle('')).to eq('')
  end

  it 'returns the middle letter for an odd word' do
    middle = Middle.new
    expect(middle.getMiddle('tests')).to eq('s')
  end

  it 'returns the middle two letters from an even word' do
    middle = Middle.new
    expect(middle.getMiddle('test')).to eq('es')
  end
end