# 1861. Rotating the Box

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
# @param {Character[][]} box
# @return {Character[][]}
def rotate_the_box(box)
  box.reverse!.map! do |b|
    unique_strings = b.uniq
    next b if !(unique_strings.include?('#') && unique_strings.include?('.'))

    result = []
    start_index = 0
    asterisk_index = b.index('*')
    next b.sort!.reverse! if asterisk_index.nil?

    tmp = b
    while asterisk_index
      result.concat(tmp[...asterisk_index].sort!.reverse! << '*')

      start_index = asterisk_index + 1
      break if start_index == b.length

      tmp = tmp[start_index..]
      asterisk_index = tmp.index('*')
    end
    next result if start_index == b.length

    result.concat(tmp[..-1].sort!.reverse!)
  end.transpose
end
```
