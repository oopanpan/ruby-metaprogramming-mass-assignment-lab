class Person
  
  def initialize(good_stuff)
    good_stuff.each{|attributes, data|
      self.class.attr_accessor(attributes)
      self.send(("#{attributes}="), data)
    }
  end
end