class ThreadTest
  threads = []
  10.times do
    thread = Thread.new do
      10.times {|i| print i; $stdout.flush;sleep rand(2)}
    end
    threads << thread
  end
end
Thread.list.each{|thread| thread.join unless thread == Thread.main}

Thread.new do
  10.times do |i|
    print i
    $stdout.flush
    Thread.stop
  end
end

class Fixnum
  def factorial
    (1..self).inject{|a,b|a * b}
  end
end
puts 8.factorial