class MyQueue
  def initialize
    @store = []
  end

  def enqueue(val)
    @store.push(val)
  end

  def dequeue
    @store.shift
  end

  def peek
    puts @store[-1]
  end

  def empty?
    @store.empty?
  end

  def size
    @store.length
  end

end