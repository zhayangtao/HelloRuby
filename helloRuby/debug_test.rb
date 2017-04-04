class DebugTest
  i = 1
  j = 0
  until i > 10000
    i *= 2
    j += 1
  end
  puts "i = #{i}, j = #{j}"
end

class String
  def titleize
    self.gsub(/(\A|\s)\w/) {|letter| letter.upcase}
  end
end
raise "Fail 1 " unless "this is a test".titleize == "This Is A Test"
raise "Fail 2 " unless "another test 1234".titleize == "Another Test 1234"
