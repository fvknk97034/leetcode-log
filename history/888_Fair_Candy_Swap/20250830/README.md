# 888. Fair Candy Swap

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
# @param {Integer[]} alice_sizes
# @param {Integer[]} bob_sizes
# @return {Integer[]}
def fair_candy_swap(alice_sizes, bob_sizes)
  diff = (alice_sizes.sum - bob_sizes.sum) / 2
  
  bob_targets = alice_sizes.each_with_object({}) { |a, obj| obj[a - diff] = a }
  bob = bob_sizes.find { |b| !bob_targets[b].nil? }
  [bob_targets[bob], bob]
end
```
