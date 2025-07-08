# @param {String[]} logs
# @return {Integer}
def min_operations(logs)
  logs.reject { |l| l === './' }.inject(0) do |result, l|
    next result += 1 unless l === '../'
    next result if result < 1

    result -= 1
  end
end
