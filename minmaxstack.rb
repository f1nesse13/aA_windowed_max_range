class MinMaxStack

  def initialize
    @store = MyStack.new
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def peek
    @store.peek[:value] unless empty?
  end

  def min
    @store.peek[:min] unless empty?
  end

  def max
    @store.peek[:max] unless empty?
  end

  def pop
    @store.pop[:value] unless empty?
  end

  def push(value)
    @store.push({
      value: val,
      min: min?(val),
      max: max?(val)
    })
  end

  def min?(val)
      empty? ? val : [min, val].min
  end

  def max?(val)
    empty? ? val : [max, val].max
  end

end