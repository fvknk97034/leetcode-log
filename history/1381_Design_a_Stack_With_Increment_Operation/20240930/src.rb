class CustomStack
=begin
  :type max_size: Integer
=end
  def initialize(max_size)
    @stack = []
    @max_size = max_size
  end

=begin
  :type x: Integer
  :rtype: Void
=end
  def push(x)
    return if @stack.length == @max_size

    @stack << x
  end

=begin
  :rtype: Integer
=end
  def pop()
    @stack.pop || -1
  end

=begin
  :type k: Integer
  :type val: Integer
  :rtype: Void
=end
  def increment(k, val)
    if @stack.length <= k
      @stack.map! { |v| v += val }
      return
    end

    (0..(k - 1)).each { |i| @stack[i] += val }
  end
end

# Your CustomStack object will be instantiated and called as such:
# obj = CustomStack.new(max_size)
# obj.push(x)
# param_2 = obj.pop()
# obj.increment(k, val)
