# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  strs.map(&:bytes).transpose.count{ |v| v != v.sort }
end
