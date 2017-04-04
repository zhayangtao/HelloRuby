class BindingTest
end
def binding_elsewhere
  x = 20
  return binding
end

remote_binding = binding_elsewhere
x = 10
eval('puts x')
eval('puts x', remote_binding)

class Person
  def name
    @name
  end
  def name= (name)
    @name = name
  end
end