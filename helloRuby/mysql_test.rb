class Mysql_test
  require 'rubygems'
  require 'mysql2'

  client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => 1234,
  :database => 'zytdb', :encoding => 'utf8')

  client.query('INSERT INTO people (name,age) VALUES ("Chris",25)');

  begin
    query = client.query('SELECT * FROM people')
    puts "There were #{query} rows returned"

    query.each_hash do |h|
      puts h.inspect
    end

  rescue
    puts client.errno
    puts client.error
  end

  client.close
end