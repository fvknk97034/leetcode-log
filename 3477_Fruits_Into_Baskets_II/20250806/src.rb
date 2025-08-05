# @param {Integer[]} fruits
# @param {Integer[]} baskets
# @return {Integer}
def num_of_unplaced_fruits(fruits, baskets)
  fruits.count do |f|
    i = baskets.index { |b| b >= f }
    baskets[i] = 0 unless i.nil?

    i.nil?
  end
end
