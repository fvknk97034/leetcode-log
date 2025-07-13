# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  arr.sort!
  diff = arr[1] - arr[0]
  arr[1..].each_cons(2).all? { |a, b| b - a === diff }
end
