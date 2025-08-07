# @param {String} moves
# @return {Integer}
def furthest_distance_from_origin(moves)
  (moves.count('L') - moves.count('R')).abs + moves.count('_')
end
