# 71. Simplify Path

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
# @param {String} path
# @return {String}
def simplify_path(path)
  results = []
  dirs = path.split('/')
  dirs.map do |d|
    next if d === '.' || d.empty?
    next results << d unless d === '..'
    next if results.length === 0

    results.pop
  end
  '/' << results.join('/')
end
```
