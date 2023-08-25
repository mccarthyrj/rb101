# medium_1 6.rb

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

p new_answer = mess_with_it(answer)

p answer - 8

# reassignment is not destructive; the answer variable still pointed to 42.