class MinMaxStackQueue

  def initialize
    @in = MinMaxStack.new
    @out = MinMaxStack.new
  end

  def size
    @in.length + @out.length
  end

  def empty?
    @in.empty? && @out.empty?
  end

  def dequeue
    @out.empty? ? to_queue : @out.pop
  end

  def enqueue(val)
    @in.push(val)
  end

  def max
    maxes = []
    maxes << @in.max unless @in.empty?
    maxes << @out.max unless @out.empty?
    maxes
  end

  def min
    mins = []
    mins << @in.min unless @in.empty?
    mins << @out.min unless @out.empty?
    mins
  end

  private

  def to_queue
    @out.push(@in.pop) until @in.empty?
  end

end