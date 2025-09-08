# 1763. Longest Nice Substring

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
# @param {String} s
# @return {String}
def longest_nice_substring(s)
  chars = s.chars
  (2..s.length).reverse_each do |len|
    result = chars.each_cons(len).find { |cs| cs.all? { |c| cs.include?(c.swapcase) } }&.join
    return result unless result.nil?
  end
  ''
end
```
