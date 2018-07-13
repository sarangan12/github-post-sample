class Stack
  def initialize
    @array = []
  end

  def push(val)
    @array.push(val)
  end

  def pop
    @array.pop
  end

  def count
    @array.length
  end
end