# study-effective-ruby
書籍「Effective Ruby」を学習するリポジトリ。

## 参考
* 書籍：[Effective Ruby](http://amzn.to/2Bpon4G)
* Web：https://www.effectiveruby.com/
* ソースコード：https://github.com/pjones/effrb

## 目次
### 第1章 Rubyに身体を慣らす
* 項目1　Rubyは何を真と考えているかを正確に理解しよう
* 項目2　オブジェクトを扱うときにはnilかもしれないということを忘れないようにしよう
* 項目3　Rubyの暗号めいたPerl風機能を避けよう
* 項目4　定数がミュータブルなことに注意しよう
* 項目5　実行時の警告に注意しよう

### 第2章 クラス、オブジェクト、モジュール
* 項目6　Rubyが継承階層をどのように組み立てるかを頭に入れよう
* 項目7　superのふるまいがひと通りではないことに注意しよう
* 項目8　サブクラスを初期化するときにはsuperを呼び出そう
* 項目9　Rubyの最悪に紛らわしい構文に注意しよう
* 項目10　構造化データの表現にはHashではなくStructを使おう
* 項目11　モジュールにコードをネストして名前空間を作ろう
* 項目12　さまざまな等値の違いを理解しよう
* 項目13　""<=>""とComparableモジュールで比較を実装しよう
* 項目14　protectedメソッドを使ってプライベートな状態を共有しよう
* 項目15　クラス変数よりもクラスインスタンス変数を使うようにしよう

### 第3章 コレクション
* 項目16　コレクションを書き換える前に引数として渡すコレクションのコピーを作っておこう
* 項目17　nil、スカラーオブジェクトを配列に変換するには、Arrayメソッドを使おう
* 項目18　要素が含まれているかどうかの処理を効率よく行うために集合を使うことを検討しよう
* 項目19　reduceを使ってコレクションを畳み込む方法を身に付けよう
* 項目20　ハッシュのデフォルト値を利用することを検討しよう
* 項目21　コレクションクラスからの継承よりも委譲を使うようにしよう。

### 第4章 例外
* 項目22　raiseにはただの文字列ではなくカスタム例外を渡そう
* 項目23　できる限りもっとも対象の狭い例外を処理するようにしよう
* 項目24　リソースはブロックとensureで管理しよう
* 項目25　ensure節は最後まで実行して抜けるように作ろう
* 項目26　retryでは回数の上限を設け、頻度を変化させ、オーディットトレイルを残そう
* 項目27　スコープから飛び出したいときにはraiseではなくthrowを使おう

### 第5章 メタプログラミング
* 項目28　モジュール、クラスフックを使いこなそう
* 項目29　クラスフックからはsuperを呼び出そう
* 項目30　method_missingではなくdefine_methodを使うようにしよう
* 項目31　evalのさまざまなバリアントの間の違いを把握しよう
* 項目32　モンキーパッチの代わりとなるものを検討しよう
* 項目33　エイリアスチェイニングで書き換えたメソッドを呼び出そう
* 項目34　Procの項数の違いに対応できるようにすることを検討しよう
* 項目35　モジュールのprependを使うときには慎重に考えよう

### 第6章 テスト
* 項目36　MiniTest単体テストに慣れよう
* 項目37　MiniTest仕様テストに慣れよう
* 項目38　モックオブジェクトで決定論をシミュレートしよう
* 項目39　効果的なテストを追求しよう

### 第7章 ツールとライブラリ
* 項目40　Rubyドキュメントの扱い方を覚えよう
* 項目41　irbの高度な機能を使えるようになろう
* 項目42　Bundlerでgemの依存関係を管理しよう
* 項目43　依存gemのバージョンの上限を指定しよう

### 第8章 メモリ管理とパフォーマンス
* 項目44　Rubyのガベージコレクタの動作に慣れよう
* 項目45　Finalizerでリソースリークを防ぐセーフティネットを作ろう
* 項目46　Rubyプロファイリングツールを使おう
* 項目47　ループ内ではオブジェクトリテラルを避けよう
* 項目48　コストの高い計算をメモ化することを検討しよう
