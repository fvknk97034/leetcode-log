# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
  (0...start_time.length).count { |i| start_time[i] <= query_time && query_time <= end_time[i] }
end
