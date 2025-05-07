# @param {Integer} num1
# @param {Integer} num2
# @param {Integer} num3
# @return {Integer}
def generate_key(num1, num2, num3)
  [
    num1.to_s.rjust(4, '0').split(''),
    num2.to_s.rjust(4, '0').split(''),
    num3.to_s.rjust(4, '0').split('')
  ].transpose
   .map(&:min)
   .join
   .to_i
end
