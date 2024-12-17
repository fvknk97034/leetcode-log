# @param {Integer[][]} brackets
# @param {Integer} income
# @return {Float}
def calculate_tax(brackets, income)
  result = 0.0
  before_upper = 0
  brackets.each do |upper, percent|
    if income >= upper
      result += (upper - before_upper) * percent / 100.to_f
      before_upper = upper
    else
      return result + (income - before_upper) * percent / 100.to_f
    end
  end
  result
end
