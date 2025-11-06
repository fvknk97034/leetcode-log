# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
  release_times.unshift(0)

  result = 'z'
  max_time = 0
  release_times.each_cons(2).with_index do |v, i|
    diff = v[1] - v[0]
    next if diff < max_time

    key = keys_pressed[i]
    next if diff === max_time && key <= result

    result = key
    max_time = diff
  end
  result
end
