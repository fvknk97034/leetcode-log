# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
  (0..(blocks.length - k)).inject(blocks.length) do |result, i|
    [result, blocks[i, k].count('W')].min
  end
end
