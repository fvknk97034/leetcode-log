# 3211. Generate Binary Strings Without Adjacent Zeros

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
# @return {String[]}
def valid_strings(n)
  results = ['0', '1']
  len = 2
  until len > n
    l = results.length
    (0...l).each do |i|
      s = results[i]
      next results[i] = "#{s}1" if s[-1] === '0'

      results[i] = "#{s}0"
      results << "#{s}1"
    end

    len += 1
  end
  results
end
```
