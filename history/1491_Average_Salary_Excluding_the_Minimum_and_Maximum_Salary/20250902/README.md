# 1491. Average Salary Excluding the Minimum and Maximum Salary

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
# @param {Integer[]} salary
# @return {Float}
def average(salary)
  salary.sort[1...-1].sum.to_f / (salary.length - 2)
end
```
