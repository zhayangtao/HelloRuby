class IO_file
=begin
  File.open("text.txt").each{|line| puts line}
end
File.new("text.txt","rw").each{|line| puts line}
File.open("text.txt") do |f|
  puts f.gets
=end
end

=begin
f = File.new("F:\\text.txt","r")
puts f.gets
f.close

class MyFile
  attr_accessor :handle
  def initialize(filename)
    @handle = File.new(filename, "r")
  end
  def finished
    @handle.close
  end
end
f = MyFile.new("f:\\text.txt")
puts f.handle.gets
f.finished


File.open("f:\\text.txt").each{|line| puts line}
File.open("f:\\text.txt","r").each(",") {|line| puts line}

File.open("f:\\text.txt") do |f|
  2.times {puts f.gets}
end
=end

data = File.open("f:\\text.txt") #"r"表示只读，文件指针放在文件开头
puts data
data = File.open("f:\\text.txt", "r+") #"r+"表示可读可写，文件指针放在文件开头
puts data

data = File.read("f:\\text.txt")  #使用read方法会自己关系文件流
puts data

File.open("f:\\copy_of_text.txt", "w") do |f| #“w”表示只写，创建覆盖旧文件
  f.puts data
end

File.open("f:\\copy_of_text.txt", "w+") do |f| #“w+”，表示可读可写，覆盖新文件
  f.puts data
end

File.open("f:\\text.txt", "a") do |f|  #“a”表示写（附加模式），文件指针放在文件末尾。
  f.puts data
end

File.open("f:\\text.txt", "a+") do |f| #“a+”表示可读可写（附加模式）
  f.puts data
end

=begin
File.open("f:\\text.txt", "b") do |f| #“B”表示二进制文件格式
  f.puts data
end
=end

puts "They're identical!" if File.identical?("f:\\text.txt", "f:\\copy_of_text.txt")

File.join('full', 'path', 'here', 'filename.txt')

puts File.mtime("f:\\text.txt")

puts 'It exists!' if File.exists?('file1.txt')

class MyFile
  attr_accessor :handle
  def initialize(filename)
    if File.exist?(filename)
      @handle = File.new(filename, "r")
    else
      return false
    end
  end
end