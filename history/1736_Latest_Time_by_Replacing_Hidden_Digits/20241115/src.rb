# @param {String} time
# @return {String}
def maximum_time(time)
  while time.include?('?') do
    i = time.index('?')
    case i
    when 0
      case time[1]
      when '0'..'3'
        time[i] = '2'
      when '4'..'9'
        time[i] = '1'
      when '?'
        time[i] = '2'
      end
    when 1
      case time[0]
      when '0'..'1'
        time[i] = '9'
      when '2'
        time[i] = '3'
      end
    when 3
      time[i] = '5'
    when 4
      time[i] = '9'
    end
  end
  time
end
