class MyHashSet
  def initialize()
    @array = {}
  end

=begin
  :type key: Integer
  :rtype: Void
=end
  def add(key)
    @array[key] = true
  end

=begin
  :type key: Integer
  :rtype: Void
=end
  def remove(key)
    @array[key] = nil
  end

=begin
  :type key: Integer
  :rtype: Boolean
=end
  def contains(key)
    !!@array[key]
  end
end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)
