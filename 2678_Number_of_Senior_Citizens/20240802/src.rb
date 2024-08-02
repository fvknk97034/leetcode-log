# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  details.count { |p| p.slice(11, 2).to_i > 60 }
end
