# 929. Unique Email Addresses

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
# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  unique_emails = emails.uniq do |e|
    localname, domain = e.split('@')

    plus_index = localname.index('+')
    localname = localname[...plus_index]
    localname.delete!('.')

    "#{localname}@#{domain}"
  end

  unique_emails.count
end
```
