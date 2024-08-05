# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  answer = []
  (1..n).to_a.each do |i|
    if i % 3 == 0 && i % 5 == 0
      answer << "FizzBuzz"
    elsif i % 3 == 0
      answer << "Fizz"
    elsif i % 5 == 0
      answer << "Buzz"
    else
      answer << i.to_s
    end
  end

  answer
end
