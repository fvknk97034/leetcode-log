# 3591. Check if Any Element Has Prime Frequency

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
# @param {Integer[]} nums
# @return {Boolean}
def check_prime_frequency(nums)
  nums.tally.values.uniq.any? do |c|
    c > 1 && (2..Math.sqrt(c)).none? { |d| c % d === 0 }
  end
end```
