class WinApiTest
end

require 'Win32API'
title = 'My Application'
text = 'Hello, World!'
Win32API.new('user32', 'MessageBox', %w(L P P L), 'I'.call(0, text, title, 0))

dialog = Win32API.new('user32', 'MessageBox', 'LPPL', 'I')
result = dialog.call(0, text, title, 1)
case result
  when 1
    puts 'Clicked Ok'
  when 2
    puts 'Clicked Cancle'
  else
    puts 'Clicked else'
end