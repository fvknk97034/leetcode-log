# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  results = []
  operation = :right

  until matrix[0]&.slice(0).nil?
    case operation
      when :right
        results.concat(matrix.shift)
        operation = :down
      when :down
        matrix.each { results << _1.pop }
        operation = :left
      when :left
        results.concat(matrix.pop.reverse)
        operation = :up
      when :up
        matrix.reverse_each { results << _1.shift }
        operation = :right
    end
  end
  results
end
