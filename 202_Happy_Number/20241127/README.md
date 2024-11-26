# 202. Happy Number

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
# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  old_results = []
  until n === 1
    old_results << n

    n = n.to_s.chars.sum do |m| 
      m.to_i.pow(2)
    end
    break if old_results.include?(n)
  end 
  n === 1
end
```
