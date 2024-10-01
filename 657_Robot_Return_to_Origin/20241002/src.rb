# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  moves.count('R') == moves.count('L') && moves.count('U') == moves.count('D')
end
