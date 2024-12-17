# @param {String} date
# @return {Integer}
require 'date'

def day_of_year(date)
  parsed_date = Date.parse(date)
  (parsed_date - Date.new(parsed_date.year, 1, 1)).numerator + 1
end
