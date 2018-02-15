# superで呼び出される順番について
class SuperClass
  def m
    puts "SuperClass"
  end
end

module ModuleA
  def m
    puts "ModuleA"
  end
end

module ModuleB
  def m
    puts "ModuleB"
  end
end

# 検証

class SubClass < SuperClass
  def m
    super #=> SuperClass
  end
end

class IncludeModule
  include ModuleA

  def m
    super #=> ModuleA
  end
end

class IncAndSub < SuperClass
  include ModuleA
  include ModuleB
  def m
    p IncAndSub.ancestors #=> [IncAndSub, ModuleB, ModuleA, SuperClass, Object, PP::ObjectMixin, Kernel, BasicObject]
    super #=> ModuleB (ancestorsの結果の順に遡ってメソッドを探す)
  end
end

SubClass.new.m
IncludeModule.new.m
IncAndSub.new.m

# 特異メソッドありの場合
ias = IncAndSub.new
def ias.m
  puts 'singular method'
end
ias.m