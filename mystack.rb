class MyStack
  def initialize(store=[])
    @store = store
  end

  def push(val)
    @store.push(val)
  end

  def pop
    @store.pop
  end

  def empty?
    @store.empty?
  end

  def size
    @store.length
  end

  def peek
    @store[-1]
  end

end