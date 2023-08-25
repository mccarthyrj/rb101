# bonus.rb

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

p calculate_bonus(7500, true)
p calculate_bonus(3000, false)