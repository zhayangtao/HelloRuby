def disconnect_and_quit
  $db.close
  puts 'Bye!'
  exit
end
class Sqlite_test
end

require 'rubygems'
require 'Sqlite3'
puts "It's all okay" if defined?(SQLite3::Database)

$db = SQLite3::Database.new('dbfile.txt')
$db.results_as_hash = true

def create_table
  puts 'Creating people table'
  $db.execute %w{
    CREATE TABLE PEOPLE(id integer primary key,
    name varchar(50),
    job varchar(50),
    gender varchar(6),
    age integer}
end

def  add_person
  puts 'Enter name:'
  name = gets.chomp
  puts 'Enter job:'
  job = gets.chomp
  puts 'Enter gender:'
  gender =gets.chomp
  puts 'Enter age:'
  age = gets.chomp
  $db.execute('INSERT INTO PEOPLE (NAME,JOB,GENDER,AGE) VALUES (?,?,?,?)' ,name,job,gender,age)
end