# 3042. Count Prefix and Suffix Pairs I

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
# @param {String[]} words
# @return {Integer}
def count_prefix_suffix_pairs(words)
  words.combination(2).count do |w1, w2|
    isPrefixAndSuffix(w1, w2)
  end
end

def isPrefixAndSuffix(str1, str2)
  str2.start_with?(str1) && str2.end_with?(str1)
end
```
