# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  accounts.flat_map{ |a| a.sum }.max
end
