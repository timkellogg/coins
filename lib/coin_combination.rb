define_method(:coin_combination) do |change|

  total = change.to_i
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

    if quarters > 1
      quarters_str = "#{quarters} quarters,"
    else
      quarters_str = "#{quarters} quarter,"
    end

    if dimes > 1
      dimes_str = "#{quarters} dimes,"
    else
      dimes_str = "#{quarters} dime,"
    end

    if nickels > 1
      nickels_str = "#{nickels} nickels,"
    else
      nickels_str = "#{nickels} nickel,"
    end

    if pennies > 1
      pennies_str = "#{pennies} pennies"
    else
      pennies_str = "#{pennies} penny"
    end

  if quarters == 0
    quarters_str = ""
  end
  if dimes == 0
    dimes_str = ""
  end
  if nickels == 0
    nickels_str = ""
  end
  if pennies == 0
    pennies_str = ""
  end
  # quarters_str ||=""
  # dimes_str ||= ""
  # nickels_str ||= ""
  # pennies_str ||= ""

  return "#{quarters_str} #{dimes_str} #{nickels_str} #{pennies_str}"

end
