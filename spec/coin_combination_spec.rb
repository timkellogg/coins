require('rspec')
require('coin_combination')

describe('coin_combination') do
  it("handles quarters correctly") do
    expect(coin_combination(25)).to(eq([1, 0, 0, 0]))
  end
  it("handles dimes correctly") do
    expect(coin_combination(10)).to(eq([0, 1, 0, 0]))
  end
  it("handles nickels correctly") do
    expect(coin_combination(5)).to(eq([0, 0, 1, 0]))
  end
  it("handles pennies correctly") do
    expect(coin_combination(1)).to(eq([0, 0, 0, 1]))
  end
end
