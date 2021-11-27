require_relative './stack'

# your code here
class MyQueue
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(value)
    while !@s2.empty? do
      @s1.push(@s2.pop)
    end
    @s2.push(value)
    while !@s1.empty? do
      @s2.push(@s1.pop)
    end
  end

  def remove
    @s2.pop
  end

  def peek
    @s2.peek
  end
end