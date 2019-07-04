# Shop class to calculate total for checkout goods
class Shop
  def initialize
    @total = 0
    @offer_a = 0
    @offer_b = 0
  end

  def checkout(goods)
    return -1 unless goods.to_s.scan(/[^A-Z]/).empty?

    goods.chars.each do |item|
      @total += PRICE[item]
      special_offer(item)
    end
    @total
  end

  private

  PRICE = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  def special_offer(item)
    case item
    when 'A'
      offer_a
    when 'B'
      offer_b
    end
  end

  def offer_a
    @offer_a += 1
    if @offer_a == 3
      @total -= 20
      @offer_a = 0
    end
  end

  def offer_b
    @offer_b += 1
    if @offer_b == 2
      @total -= 15
      @offer_b = 0
    end
  end
end
