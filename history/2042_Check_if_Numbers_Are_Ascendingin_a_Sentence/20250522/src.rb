# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
  numbers = s.split.filter { |t| t =~ /\A[0-9]+\z/ }.map(&:to_i)
  numbers == numbers.sort && numbers == numbers.uniq
end
