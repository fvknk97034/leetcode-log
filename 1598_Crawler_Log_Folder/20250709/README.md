# 1598. Crawler Log Folder

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
# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
  logs.reject { |l| l === './' }.inject(0) do |result, l|
    next result += 1 unless l === '../'
    next result if result < 1

    result -= 1
  end
end
```
