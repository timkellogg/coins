define_method(:coin_combination) do |change|

  total = change
  returned_change = []

  quarters = (total / 25).floor
  remaining_change = total % 25

  return [quarters]

end
