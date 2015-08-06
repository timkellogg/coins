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

define_method(:format_change) do |change|
  quarters = change[0]
  dimes = change[1]
  nickels = change[2]
  pennies = change[3]

  if quarters
    if quarters > 1
      quarters = "#{quarters} quarters,"
    else
      quarters = "#{quarters} quarter,"
    end
  end

  if dimes
    if dimes > 1
      dimes = "#{quarters} dimes,"
    else
      dimes = "#{quarters} dime,"
    end
  end

  if nickels
    if nickels > 1
      nickels = "#{nickels} nickels,"
    else
      nickels = "#{nickels} nickel,"
    end
  end

  if pennies
    if pennies > 1
      pennies = "#{pennies} pennies"
    else
      pennies = "#{pennies} penny"
    end
  end

  return "#{quarters} #{dimes} #{nickels} #{pennies}"

end
