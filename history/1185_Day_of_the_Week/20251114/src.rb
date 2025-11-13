# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
def day_of_the_week(day, month, year)
  days = day

  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  days += month_days[...month - 1].sum unless month === 1
  days += 1 if leap_year?(year) && month > 2

  days += (1971..(year - 1)).sum { |y| leap_year?(y) ? 366 : 365 }

  week = %w[Thursday Friday Saturday Sunday Monday Tuesday Wednesday]
  week[days % 7]
end

def leap_year?(year)
  return true if year % 400 === 0
  return false if year % 100 === 0

  year % 4 === 0
end
