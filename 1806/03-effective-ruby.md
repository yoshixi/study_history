位置No 833/6277
## rubyのmoduleについて

- クラスはClassクラスのインスタンスだが、モジュールはmoduleクラスのインスタンスである
- 得意クラスは継承階層に含まれている名前のない不可視のクラスに使われる名前
- `respond_to?(&:method_name)` でmethodが機能しているか確かめられる

重要
- moduleは継承された上の階層に挿入される(特異クラス)
- そのためincludeしたメソッドでは、moduleではclassのメソッドをoverrideできない

例
```
class Person
end

class Customer < Person
  include ThingsWithNames
end
```

継承階層

```
BasicObject
↑
Kernel
↑
Object
↑
ThingsWithNames(moudule)
↑
Person
↑
Customer
```

## 知識てきな

- セッターメソッドを`def value=` の形で定義できる
- セッターメソッドは`self`レシーバーを呼び出さないと、ローカル変数への代入と勘違いされる
- 構造化されているデータを扱う時は、hashよりもstructを使うと良い
- hashとstructの主な違いは、定義がないkeyにアクセスした時に`no_method_error`が出るか`nil`が返ってくるか
- do-end block で囲めばメソッドもラフに定義できる

```
Readind = Struct.new(:date, :high, :law) do
  def mean
    (high/low) / 2.0
  end
end

# using-img
csv_file.each do |row|
  @readings<<  Reading.new(Date.parse(row[2), row[10], row[11])
end

```
