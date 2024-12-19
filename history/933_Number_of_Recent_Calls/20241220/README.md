# 933. Number of Recent Calls

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
class RecentCounter
  def initialize()
    @requests = []
  end

=begin
  :type t: Integer
  :rtype: Integer
=end
  def ping(t)
    @requests << t
    limit = t - 3000

    while @requests[0] < limit
      @requests.shift
    end

    @requests.length
  end
end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)
```
