def fib(n)
  my_array = []
  n.times do |i|
    if i < 2
      my_array << i
    else
      new_fib_number = my_array[i-1] + my_array[i-2]
      my_array << new_fib_number
    end
  end
  my_array
end


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


def merge_sort(array)
  return array if array.length == 1
    mid = array.length / 2
    left_sorted = merge_sort(array.take(mid))
    right_sorted = merge_sort(array.drop(mid))
    merge(left_sorted,right_sorted)
end

def merge(left, right)
  sorted_array = []
  i,j,k = 0,0,0
  max_loop = left.length + right.length
  max_loop.times do 
    if left[i] == nil || right[j] == nil
      sorted_array.concat(left[i..-1]) if right[j] == nil
      sorted_array.concat(right[j..-1]) if left[i] == nil
      break
    end
    if left[i] < right[j]
      sorted_array[k] = left[i]
      i += 1
      k += 1
    else
      sorted_array[k] = right[j]
      j += 1
      k += 1
    end
  end
  sorted_array
end
