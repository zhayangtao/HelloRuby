class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  1.upto 5 do
    puts "hello"
  end
  1.upto(5) {puts "hello"}
  %q<this is a string test>
  <<END_MY_STRING
this is a string test
and a second line
END_MY_STRING

  puts "success" if "test" + "string" == "teststring"
  puts "hello" * 5
  puts ?x
  puts 120.chr
end
