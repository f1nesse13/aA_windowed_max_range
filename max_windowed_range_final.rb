require_relative 'minmaxstackqueue'

def windowed_max_range(arr, w_size)

  stack_queue = MinMaxStackQueue.new
  best_arr = nil

  arr.each_with_index do |val, i|
    stack_queue.enqueue(val)
    stack_queue.dequeue if stack_queue.size > w_size

    if stack_queue.size == w_size
      check = stack_queue.max - stack_queue.min
      best_arr = check if !best_arr || check > best_arr
    end
  end

  best_arr

end


if $PROGRAM_NAME == __FILE__

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

end