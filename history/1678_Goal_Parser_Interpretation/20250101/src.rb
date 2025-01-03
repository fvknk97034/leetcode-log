# @param {String} command
# @return {String}
def interpret(command)
  command.gsub('(al)', 'al').gsub('()', 'o')
end
