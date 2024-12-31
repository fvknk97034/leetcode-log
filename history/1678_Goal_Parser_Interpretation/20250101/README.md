# 1678. Goal Parser Interpretation

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
# @param {String} command
# @return {String}
def interpret(command)
  command.gsub('(al)', 'al').gsub('()', 'o')
end
```
