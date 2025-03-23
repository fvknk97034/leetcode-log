# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
  lowers = []
  equals = []
  highers = []

  nums.each do |n|
    next lowers << n if n < pivot
    next equals << n if n === pivot

    highers << n
  end

  lowers.concat(equals).concat(highers)
end
