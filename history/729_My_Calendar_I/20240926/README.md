# 729. My Calendar I

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
class MyCalendar
  def initialize()
    @books = []
  end

  =begin
    :type s: Integer
    :type e: Integer
    :rtype: Boolean
  =end
  def book(s, e)
    return false if @books.any? { |bs, be| bs < e && s < be }

    @books << [s, e]
    true
  end
end

# Your MyCalendar object will be instantiated and called as such:
# obj = MyCalendar.new()
# param_1 = obj.book(start, end)
```
