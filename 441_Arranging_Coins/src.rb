# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  row = 1
  while (n > row) do
    n -= row
    row += 1 if n > row
  end
  row
end
