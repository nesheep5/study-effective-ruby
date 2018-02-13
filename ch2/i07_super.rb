# superの振る舞いについて
class SuperClass
  def m1(x=0, y=0)
    puts "x=#{x}, y=#{y}"
  end
end

class SubClass < SuperClass
  def m1(x, y)
    super(1, 2) # => x=1, y=2
    super(x, y) # => x=a, y=b
    super x, y  # => x=a, y=b
    super       # => x=a, y=b
    super()     # => x=0, y=0 (引数なしで呼び出し)
  end
end

subclass = SubClass.new
subclass.m1('a', 'b')