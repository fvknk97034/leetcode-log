# @param {Integer[][]} logs
# @return {Integer}
def maximum_population(logs)
  counts = {}

  logs.each do |birth, death|
    (birth...death).each do |year|
      counts[year] ||= 0
      counts[year] += 1
    end
  end

  counts.max_by { |k, v| [v, -k] }[0]
end
