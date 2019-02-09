require_relative 'stack'
class StackQueue
  
  def initialize
    @in = MyStack.new
    @out = MyStack.new
  end

  def size
    @in.size + @out.size
  end

  def empty?
    @in.empty? && @out.empty?
  end
  
  def enqueue(val)
    @in.push(val)
  end

  def dequeue
    to_queue if @out.empty?
    @out.pop 
  end

  private
  
  def to_queue
    @out.push(@in.pop) until @in.empty?
  end
  
end