# アクセス修飾子について
require 'english'

class ScopeResearchClass
  def public_method
    'public'
  end

  def use_protected(other)
    puts other.protected_method
  end

  def use_private(other)
    puts other.private_method
  rescue
    puts $ERROR_INFO
  end

  def internal_use_private_and_protected
    puts protected_method
    puts private_method
  end

  def internal_use_private_and_protected_with_reciever
    puts self.protected_method
    puts private_method
  rescue
    puts $ERROR_INFO
  end

  protected

  def protected_method
    'protected'
  end

  private

  def private_method
    'private'
  end
end

# 検証
pc1 = ScopeResearchClass.new
pc2 = ScopeResearchClass.new

begin
  pc1.protected_method
rescue
  # protected は外部からは呼び出せずにエラー
  puts $ERROR_INFO
end

begin
  pc1.private_method
rescue
  # private は外部からは呼び出せずにエラー
  puts $ERROR_INFO
end

# private / protected ともに内部から利用可能
pc1.internal_use_private_and_protected

# protected は レシーバーつきでも呼び出し可能
# private は レシーバーつきだと呼び出せず
pc1.internal_use_private_and_protected_with_reciever

class Hoge
  def can_not_use_external_protected_method(other)
    other.protected_method
  rescue
    puts $ERROR_INFO
  end
end

# 関係ないクラス内からは呼び出せないことを確認
Hoge.new.can_not_use_external_protected_method(pc2)

# protected メソッドは自クラスに別インスタンスを渡しても呼び出し可能
pc1.use_protected(pc2)

# private メソッドは自クラスに別インスタンスを渡した場合、レシーバーの指定が出来ないのでエラーになる
pc1.use_private(pc2)

class ChildProtectedClass < ScopeResearchClass
  def use_protected_from_child(other)
    puts other.protected_method
  end
end

# protected メソッドはサブクラスに別インスタンスを渡しても呼び出し可能
ChildProtectedClass.new.use_protected_from_child(pc2)