class String_extensions
  def vowels
    self.scan(/[aeiou]/)
  end
end

require 'net/http'
=begin
Net::HTTP.get_print('www.baidu.com', '/')


url = URI.parse('http://www.baidu.com/')
response = Net::HTTP.start(url.host, url.port) do |http|
  http.get(url.path)
end
content = response.body
puts content

=end

require 'ostruct'
person = OpenStruct.new
person.name = "Fred blogs"
person.age = 25

require 'rubygems'
require 'hpricot'
puts "hpricot installed" if Hpricot