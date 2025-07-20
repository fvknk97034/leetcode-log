# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  results = [0] * num_people

  base_given_candy = 1
  until candies === 0
    (0...num_people).each do |i|
      given_candy = [base_given_candy, candies].min

      results[i] += given_candy
      candies -= given_candy
      base_given_candy += 1
    end
  end

  results
end
