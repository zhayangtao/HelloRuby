=begin
聊天小程序客户端
=end
require 'E:/workspaceForRubyMine/robotProgram/bot'

bot = Bot.new(:name => ARGV[0], :data_file => ARGV[1])
puts '#{bot.name}says:' + bot.greeting

while (input = $stdin.gets) and input.chomp != 'end'
  puts '>>' + bot.response_to(input)
end

puts bot.farewell