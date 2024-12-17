# @param {String} title
# @return {String}
def capitalize_title(title)
  title.downcase.split.map! { |s| s.length > 2 ? s.capitalize : s }.join(' ')
end
