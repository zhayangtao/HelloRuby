#!/usr/bin/env ruby
class Test
  puts 'Your program works'
  ENV.each{|e| puts e.join(': ')}

end

