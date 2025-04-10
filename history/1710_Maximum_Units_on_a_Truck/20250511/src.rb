# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  box_count = 0
  sum = 0
  box_types.sort_by { -_1[1] }.each do |a|
    return sum if box_count === truck_size

    min_box_count = [truck_size - box_count, a[0]].min
    sum += min_box_count * a[1]
    box_count += min_box_count
  end
  sum
end
