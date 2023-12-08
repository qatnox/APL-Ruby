class Visitor
  def visit(object)
    puts object
  end
end

class Person
  def accept(visitor)
    visitor.visit(self)
  end
end

class Animal
  def accept(visitor)
    visitor.visit(self)
  end
end

objects = [Person.new, Animal.new]

visitor = Visitor.new

for object in objects
  object.accept(visitor)
end
