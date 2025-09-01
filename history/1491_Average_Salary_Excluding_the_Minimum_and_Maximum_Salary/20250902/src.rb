# @param {Integer[]} salary
# @return {Float}
def average(salary)
  salary.sort[1...-1].sum.to_f / (salary.length - 2)
end
