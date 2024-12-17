# 2129. Capitalize the Title

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
# @param {String} title
# @return {String}
def capitalize_title(title)
  title.downcase.split.map! { |s| s.length > 2 ? s.capitalize : s }.join(' ')
end
```
