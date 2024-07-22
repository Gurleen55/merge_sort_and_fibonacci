# def fib(n)
#   my_array = []
#   n.times do |i|
#     if i < 2
#       my_array << i
#     else
#       new_fib_number = my_array[i-1] + my_array[i-2]
#       my_array << new_fib_number
#     end
#   end
#   my_array
# end

# p fib(8)
# p fib(3)

def fib_recursive(n, my_array = [], i = 1)
  puts "This was printed recursively"
  if i == 1
    my_array << 0
  elsif i == 2
    my_array << 1
  else
    my_array << my_array[-1] + my_array[-2]
  end

  return my_array if i == n 
  fib_recursive(n, my_array, i +1)
end

p fib_recursive(8)
  