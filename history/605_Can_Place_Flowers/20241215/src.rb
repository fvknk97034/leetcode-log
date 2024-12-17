# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  return true if n === 0

  len = flowerbed.length

  (0...len).each do |i|
    next if flowerbed[i] === 1
    next if i > 0 && flowerbed[i - 1] === 1
    next if i < len && flowerbed[i + 1] === 1

    flowerbed[i] = 1
    n -= 1
    return true if n === 0
  end
  false
end
