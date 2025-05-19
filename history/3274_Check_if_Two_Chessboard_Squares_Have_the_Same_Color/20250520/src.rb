# @param {String} coordinate1
# @param {String} coordinate2
# @return {Boolean}
def check_two_chessboards(coordinate1, coordinate2)
  even_rows = (1..8).filter(&:even?).map(&:to_s)
  odd_rows = (1..8).filter(&:odd?).map(&:to_s)
  while_cells = {
    a: even_rows,
    b: odd_rows,
    c: even_rows,
    d: odd_rows,
    e: even_rows,
    f: odd_rows,
    g: even_rows,
    h: odd_rows
  }
  while_cells[coordinate1[0].to_sym].include?(coordinate1[1]) === while_cells[coordinate2[0].to_sym].include?(coordinate2[1])
end
