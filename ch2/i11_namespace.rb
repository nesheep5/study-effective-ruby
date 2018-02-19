# 名前空間について

# Bindingはコアライブラリに存在するため、既存クラスを再オープンという意味になる
class Binding
  def initialize(style, options={})
    @style = style
    @options = options
  end
end

# moduleで名前空間を作る
module NoteBooks
  class Binding
    def initialize(style, options={})
      @style = style
      @options = options
    end
  end
end

NoteBooks::Binding.new # => NameError

# 独自のArrayクラスで、コアライブラリのArrayを呼び出したい場合
module Module1
  class Array
    def initialize(n)
      # @disks = Array.new(n) { |i| "disk#{i}"  } # =>無限ループでSystemStackError
      @disks = ::Array.new(n) { |i| "disk#{i}"  }
    end
  end
end

Module1::Array.new(8)
