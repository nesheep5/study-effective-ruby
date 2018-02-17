# 名前空間について

# Bindingはコアライブラリに存在するため、既存クラスを再オープンという意味になる
class Binding
  def initiralze(style, options={})
    @style = style
    @options = options
  end
end

# moduleで名前空間を作る
module NoteBooks
  class Binding
    def initiralze(style, options={})
      @style = style
      @options = options
    end
  end
end

NoteBooks::Binding.new # => NameError
