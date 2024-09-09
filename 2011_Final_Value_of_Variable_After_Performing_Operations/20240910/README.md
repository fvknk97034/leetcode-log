# 2011. Final Value of Variable After Performing Operations

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
# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  result = 0
  operations.each do |o|
    if o.include?('+')
      result += 1
    else
      result -= 1
    end
  end
  result
end
```
