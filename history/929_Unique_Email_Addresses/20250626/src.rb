# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  unique_emails = emails.uniq do |e|
    localname, domain = e.split('@')

    plus_index = localname.index('+')
    localname = localname[...plus_index]
    localname.delete!('.')

    "#{localname}@#{domain}"
  end

  unique_emails.count
end
