# 3258. Count Substrings That Satisfy K-Constraint I

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
# @param {Integer} k
# @return {Integer}
def count_k_constraint_substrings(s, k)
  s_len = s.length
  count = s_len
  (0...(s_len - 1)).each do |i|
    ((i + 1)...s_len).each do |j|
      sub_s = s[i..j]
      break if sub_s.count('1') > k && sub_s.count('0') > k
      count += 1
    end
  end

  count
end
```
