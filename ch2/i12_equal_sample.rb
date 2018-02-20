# Rubyの比較について(equal?, eql?, == , ===)

# == : 等値であることをチェック
'foo' == 'foo' #=> true
1 == 1.0 #=> true

# equal? : ２つのオブジェクトが全く同じオブジェクトかをチェック
'foo'.equal?('foo') #=> false
foo = 'foo'
foo.equal?(foo) #=> true