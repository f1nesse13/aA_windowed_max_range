require_relative 'minmaxstack'
class MinMaxStackQueue

  def initialize
    @in = MinMaxStack.new
    @out = MinMaxStack.new
  end

  def size
    @in.size + @out.size
  end

  def empty?
    @in.empty? && @out.empty?
  end

  def dequeue
    to_queue if @out.empty?
    @out.pop
  end

  def enqueue(val)
    @in.push(val)
  end

  def max
    maxes = []
    maxes << @in.max unless @in.empty?
    maxes << @out.max unless @out.empty?
    maxes.max
  end

  def min
    mins = []
    mins << @in.min unless @in.empty?
    mins << @out.min unless @out.empty?
    mins.min
  end

  private

  def to_queue
    @out.push(@in.pop) until @in.empty?
  end

end