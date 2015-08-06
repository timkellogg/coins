define_method(:coin_combination) do |change|

  total = change
  returned_change = []

  quarters = (total / 25).floor
  remaining_change = total % 25
  dimes = (remaining_change / 10).floor
  remaining_change %= 10
  nickels = (remaining_change / 5).floor
  remaining_change %= 5
  pennies = remaining_change / 1

  return [quarters, dimes, nickels, pennies]

end
