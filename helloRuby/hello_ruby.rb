class HelloRuby
  '
end
  fruit = "orange"
  color = "orange" if fruit == "orange"
  color = "green" if fruit == "apple"
  color = "yellow" if fruit == "banana"
  puts color

  #elsif else
  if fruit == "orange"
    color = "orange"
  elsif fruit == "apple"
    color = "green"
  elsif fruit == "banana"
    color = "yellow"
  else
    color = "unknown"
  end
  puts color

  #case when
  case fruit
    when "orange"
      color = "orange"
    when "apple"
      color = "green"
    else
      color = "unknown"
  end

  color = case fruit
            when "orange"
              "orange"
            when "apple"
              "green"
            when "banana"
              "yellow"
            else
              "unknown"
          end
  1.upto(5) {|num| puts num }
  x = 1
  while x < 10
    puts x
    x = x * 2
  end

  # until
  x = 1
  until x > 99
    puts x
    x = x * 2
  end
'
  '
  i = 1
  u = i * 2 until i > 1000
  puts i

  x =  [1, 2, 3]
  x.each {|y| puts y}
 '
  x = [1, 2, 3]
  x.each do |y|
    puts y
  end

  %w{a e i o u}

end
def each_vowel(&code_block)
  %w{a e i o u}.each{|vowel| code_block.call(vowel)}
end
each_vowel{|vowel| puts vowel}

def each_vowel
  %w{a e i o u}.each{ |vowel| yield vowel}
end
each_vowel{|vowel| puts vowel}

=begin
text = ""
line_count = 0

File.open("text.txt").each do |line|
  line_count += 1
  text << line
end
puts "#{line_count} lines"

lines = File.readLines("text.txt")
line_count = lines.size
text = lines.join
puts "#{line_count} lines"

str = "this is a test".gsub(/t/, 'x')
puts str

total_char_nospaces = text.gsub(/\s+/, '').length
puts "#{total_char_nospaces} characters excluding spaces"



puts "this is a test".scan(/\w+/).join("-")
puts "this is a test".scan(/\w+/).length
puts "this is a test".split.length

word_count = text.split.length
puts "#{word_count} words"


lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
word_count = text.split.length
character_count_nospaces = text.gsub(/\s+/, '').length
paregraph_count = text.split(/\n \n/).length
sentence_count = text.split(/\.|\?|!/).length
=end


#虚词数组
text = %q{Los Angeles has some of the nicest weather in the country.}
stop_words = %w{the a by on for of are with just but and to the my I has some in}

words = text.scan(/\w+/)
key_words = words.select {|word| !stop_words.include?(word)}
puts key_words.join(' ')

((key_words.length.to_f / words.length.to_f) * 100).to_i