# medium_1 9.rb

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# foo returns "yes", but param is NOT equal to "no" so bar(foo) retuns "no"
# Ternary operator:
# Think of it like shorthand for if-statement.
# (If) value (is) == value ?(then) true :(or) false (if not)