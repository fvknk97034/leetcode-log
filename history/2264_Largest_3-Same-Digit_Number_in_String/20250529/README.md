# 2264. Largest 3-Same-Digit Number in String

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
# @param {String} num
# @return {String}
def largest_good_integer(num)
  result = ''
  tmp = ''
  num.each_char do |n|
    next tmp = n unless tmp[-1] === n

    tmp << n

    next unless tmp.length === 3

    if result < tmp
      result = tmp
      tmp = ''
    end
  end

  result
end
```
