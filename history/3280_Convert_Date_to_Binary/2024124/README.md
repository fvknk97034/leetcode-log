# 3280. Convert Date to Binary

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
# @param {String} date
# @return {String}
def convert_date_to_binary(date)
  date.split('-').map{ |d| d.to_i.to_s(2) }.join('-')
end
```
