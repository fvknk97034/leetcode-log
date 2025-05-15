# 2900. Longest Unequal Adjacent Groups Subsequence I

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
# @param {Integer[]} groups
# @return {String[]}
def get_longest_subsequence(words, groups)
  results = [words[0]]
  groups.each_cons(2).with_index(1) do |g, i|
    results << words[i] unless g[0] === g[1]
  end
  results
end
```
