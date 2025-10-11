# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
  results = [first]
  encoded.each do |e|
    results << (results[-1] ^ e)
  end
  results
end
