# 225. Implement Stack using Queues

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
class MyStack
    def initialize()
      @element = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @element << x
    end


=begin
    :rtype: Integer
=end
    def pop()
      @element.delete_at(@element.length - 1)
    end


=begin
    :rtype: Integer
=end
    def top()
      @element.last
    end


=begin
    :rtype: Boolean
=end
    def empty()
      @element.length == 0
    end


end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
```
