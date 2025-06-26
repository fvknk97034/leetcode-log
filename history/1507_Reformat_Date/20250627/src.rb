# @param {String} date
# @return {String}
def reformat_date(date)
  month_nums = {
    Jan: '01',
    Feb: '02',
    Mar: '03',
    Apr: '04',
    May: '05',
    Jun: '06',
    Jul: '07',
    Aug: '08',
    Sep: '09',
    Oct: '10',
    Nov: '11',
    Dec: '12'
  }

  day_str, month_str, year = date.split
  day = day_str.delete('st')
               .delete('nd')
               .delete('rd')
               .delete('th')
               .rjust(2, '0')
  month = month_nums[month_str.to_sym]

  "#{year}-#{month}-#{day}"
end
