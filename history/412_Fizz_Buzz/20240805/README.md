# 412. Fizz Buzz

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 1から指定の数値までの整数の配列の各要素に対して判定を行い、返り値の配列に格納する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  answer = []
  (1..n).to_a.each do |i|
    if i % 3 == 0 && i % 5 == 0
      answer << "FizzBuzz"
    elsif i % 3 == 0
      answer << "Fizz"
    elsif i % 5 == 0
      answer << "Buzz"
    else
      answer << i.to_s
    end
  end

  answer
end
```
