# 661. Image Smoother

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
# @param {Integer[][]} img
# @return {Integer[][]}
def image_smoother(img)
  m = img.length
  n = img[0].length
  (0...m).map do |i|
    mat, row_len = if m === 1
                     [img[i, 1], 1]
                   elsif i === 0
                     [img[i, 2], 2]
                   elsif i === m - 1
                     [img[i - 1, 2], 2]
                   else
                     [img[i - 1, 3], 3]
                   end

    (0...n).map do |j|
      next mat.sum { |m| m[j - 1, 1].sum } / row_len if n === 1
      next mat.sum { |m| m[j, 2].sum } / (row_len * 2) if j === 0
      next mat.sum { |m| m[j - 1, 2].sum } / (row_len * 2) if j === n - 1

      mat.sum { |m| m[j - 1, 3].sum } / (row_len * 3)
    end
  end
end
```
