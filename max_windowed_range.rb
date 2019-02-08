def max_windowed_range(array, window_size)
  current_max_range = 0
  best_arr = []
  check_arr = []
  array.each do |val|
    check_arr << val
    if check_arr.length == window_size
      diff = check_arr.max - check_arr.min
      if diff > current_max_range
        current_max_range = diff 
        best_arr = check_arr.dup
      end
      check_arr.shift
    end
  end
  return [best_arr, current_max_range]
end

p max_windowed_range([1, 0, 2, 5, 4, 8], 2) # 4 # 4, 8
p max_windowed_range([1, 0, 2, 5, 4, 8], 3) # 5 # 0, 2, 5
p max_windowed_range([1, 0, 2, 5, 4, 8], 4) # 6 # 2, 5, 4, 8
p max_windowed_range([1, 3, 2, 5, 4, 8], 5) # 6 # 3, 2, 5, 4, 8