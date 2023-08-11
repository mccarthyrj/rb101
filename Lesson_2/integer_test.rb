def number?(num)
  num == num.to_i || num == num.to_f
end

p number?(5)
p number?(5.5)
p number?('cat')