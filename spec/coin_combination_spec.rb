require('rspec')
require('coin_combination')

describe('coin_combination') do
  it("handles quarters correctly") do
    expect(coin_combination(25)).to(eq([1]))
  end
end
