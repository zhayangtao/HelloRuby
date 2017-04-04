class ForkTest
end

if fork.nil?
  exec 'ruby some_other_file.rb'
end
puts 'This Ruby script noew runs alongside some_other_file.rb'

child = fork do
  sleep 3
  puts 'Child says "hi!"'
end
puts 'Waiting for the child process...'
Process.wait child
puts 'All done!'

ls = IO.popen('ls','r')
while line = ls.gets
  puts line
end
ls.close