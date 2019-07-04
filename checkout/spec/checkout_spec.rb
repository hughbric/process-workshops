require 'checkout'

describe Shop do
  it 'returns -1 if not letter not capital' do
    shop = Shop.new
    expect(shop.checkout('aBc')).to eq(-1)
  end

  it 'returns -1 if not letter not capital' do
    shop = Shop.new
    expect(shop.checkout('-B8x')).to eq(-1)
  end

  it 'returns -1 if not letter not capital' do
    shop = Shop.new
    expect(shop.checkout(18)).to eq(-1)
  end

  it 'returns -1 if not letter not capital' do
    shop = Shop.new
    expect(shop.checkout('AA')).to eq(100)
  end

  it 'returns -1 if not letter not capital' do
    shop = Shop.new
    expect(shop.checkout('ABCD')).to eq(115)
  end

  it 'returns -1 if not letter not capital' do
    shop = Shop.new
    expect(shop.checkout('AAA')).to eq(130)
  end

  it 'returns -1 if not letter not capital' do
    shop = Shop.new
    expect(shop.checkout('AAAAAA')).to eq(260)
  end
end
