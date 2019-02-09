require_relative 'mystack'

class MinMaxStack

  def initialize
    @store = MyStack.new
  end

  def size
    @store.size
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

  def push(val)
    @store.push({
      max: max?(val),
      min: min?(val),
      value: val
    })
  end
  
  private

  def min?(val)
      empty? ? val : [min, val].min
  end

  def max?(val)
    empty? ? val : [max, val].max
  end

end