# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  max_width = 100
  pixels = ('a'..'z').zip(widths).to_h

  line_count = 1
  line_width = 0
  s.each_char do |c|
    added_sub_count = line_width + pixels[c]

    next line_width = added_sub_count if added_sub_count <= max_width

    line_count += 1
    line_width = pixels[c]
  end
  [line_count, line_width]
end
