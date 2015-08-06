require('./app')
require('capybara/rspec')
Capybara.app = Sinatra::Application

describe('the coin machine process', {:type => :feature }) do
  it("allows the user to enter their change and then displays the smallest combination of coins") do
    visit('/')
    fill_in('user_change', :with => "124")
    click_button('Submit')
    expect(page).to have_content("4 quarters, 2 dimes, 4 pennies")
  end
end
