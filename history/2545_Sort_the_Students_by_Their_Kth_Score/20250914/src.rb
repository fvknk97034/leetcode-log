# @param {Integer[][]} score
# @param {Integer} k
# @return {Integer[][]}
def sort_the_students(score, k)
  score.sort_by { |s| -s[k] }
end
