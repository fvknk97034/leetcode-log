class MyCircularDeque

=begin
  :type k: Integer
=end
  def initialize(k)
    @deque = []
    @size = k
  end

=begin
    :type value: Integer
    :rtype: Boolean
=end
  def insert_front(value)
    return false if is_full

    @deque.unshift(value)
    true
  end

=begin
  :type value: Integer
  :rtype: Boolean
=end
  def insert_last(value)
    return false if is_full

    @deque << value
    true
  end

=begin
  :rtype: Boolean
=end
  def delete_front()
    return false if is_empty

    @deque.shift
    true
  end

=begin
  :rtype: Boolean
=end
  def delete_last()
    return false if is_empty

    @deque.pop
    true
  end

=begin
  :rtype: Integer
=end
  def get_front()
    @deque[0] || -1
  end

=begin
  :rtype: Integer
=end
  def get_rear()
    @deque[-1] || -1
  end

=begin
  :rtype: Boolean
=end
  def is_empty()
    @deque.empty?
  end

=begin
  :rtype: Boolean
=end
  def is_full()
    @deque.size == @size
  end
end

# Your MyCircularDeque object will be instantiated and called as such:
# obj = MyCircularDeque.new(k)
# param_1 = obj.insert_front(value)
# param_2 = obj.insert_last(value)
# param_3 = obj.delete_front()
# param_4 = obj.delete_last()
# param_5 = obj.get_front()
# param_6 = obj.get_rear()
# param_7 = obj.is_empty()
# param_8 = obj.is_full()
