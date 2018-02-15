# initializeのsuperについて

class Parent
  attr_accessor :name
  def initialize
    @name = 'Howord'
  end
end

class Child1 < Parent
  attr_accessor :grade
  def initialize
    # superを指定しない
    @grade = 8
  end
end

class Child2 < Parent
  attr_accessor :grade
  def initialize
    super
    @grade = 8
  end
end

c1 = Child1.new #=> #<Child:0x00007fd583b2e6b0 @grade=8>
c1.name #=> nil (暗黙的に親クラスのinitializeが呼ばれるわけではない)

c2 = Child2.new #=> #<Child:0x00007fd583b2e6b0 @grade=8>
c2.name #=> Howord
