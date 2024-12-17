# @param {Integer} n
# @return {Integer}
def sum_of_multiples(n)
  target = 3
  result = 0
  while (target <= n) do
    result += target if target % 3 == 0 || target % 5 == 0 || target % 7 == 0
    target += 1
  end
  result
end
