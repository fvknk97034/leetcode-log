# 171. Excel Sheet Column Number

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
# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  char_numbers = {}
  ('A'..'Z').each_with_index do |c, i|
    char_numbers[c] = i + 1
  end

  column_title.reverse.chars.each_with_index.sum do |c, i|
    char_numbers[c] * 26.pow(i)
  end
end
```
