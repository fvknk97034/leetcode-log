# @param {String} path
# @return {String}
def simplify_path(path)
  results = []
  dirs = path.split('/')
  dirs.map do |d|
    next if d === '.' || d.empty?
    next results << d unless d === '..'
    next if results.length === 0

    results.pop
  end
  '/' << results.join('/')
end
