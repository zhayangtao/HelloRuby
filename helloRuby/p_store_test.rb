class PStore_test
end

class Person
  attr_accessor :name, :job, :gender, :age
end
fred = Person.new
fred.name = "Fred Blogg"
fred.age = 45

larua = Person.new
larua.name = "Larua Smith"
larua.age = 23

require 'PStore'
store = PStore.new('storagefile')
store.transaction do
  store[:people] ||= Array.new
  store[:people] << fred
  store[:people] << larua
end


#从 storagefile中读取数据
require 'PStore'
store = PStore.new('storagefile')
people = []
store.transaction do
  people = store[:people]
end
people.each do |person|
  puts person.name
end