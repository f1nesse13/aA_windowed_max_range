require_relative 'stack'
class StackQueue
  
  def initialize
    @in = MyStack.new
    @out = MyStack.new
  end

  def size
    @in.length + @out.length
  end

  def empty?
    @store.empty?
  end
  
  def enqueue(val)
    @in.push(val)
  end

  def dequeue
    @out.empty? ? to_queue : @out.pop 
  end

  def to_queue
    @out.push(@in.pop) until @in.empty?
  end
  
end