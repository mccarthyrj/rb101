# medium_1 4.rb

# this method will mutate the object passed to the method.
# this method returns a meaningful value and has a side effect.
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# this method will not mutate the object, but return a new one.
# this is the better of the two methods because it has no side effects.
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end