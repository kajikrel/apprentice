# ブラックジャックゲーム

ブラックジャックをオブジェクト指向を使って実装しましょう。オブジェクト指向でプログラムを作成した実績を作るのが目的です。

ブラックジャックはカジノで行われるカードゲームの一種です。1〜13までの数が書かれたカード52枚を使ってゲームが行われます。ルールは次の通りです。

- 実行開始時、ディーラーとプレイヤー全員に２枚ずつカードが配られる
- 自分のカードの合計値が21に近づくよう、カードを追加するか、追加しないかを決める
- カードの合計値が21を超えてしまった時点で、その場で負けが確定する
- プレイヤーはカードの合計値が21を超えない限り、好きなだけカードを追加できる
- ディーラーはカードの合計値が17を超えるまでカードを追加する

各カードの点数は次のように決まっています。

- 2から9までは、書かれている数の通りの点数
- 10,J,Q,Kは10点
- Aは1点あるいは11点として、手の点数が最大となる方で数える

このゲームには何人かのプレイヤーがおり、カードの合計値を競います。なお、実装する際には次の点を守るようにしてください。

- 静的解析ツールは一通り通る状態にしておきましょう
- 変更しづらかったり読みづらい箇所は何度も書き直しましょう


## ファイル構成

```
blackjack
│   .rubocop.yml
│   app.rb
│
└───lib
    │   card.rb
    │   deck.rb
    │   game.rb
    │   player.rb

  ```

## ゲームの実行
「blackjack/app.rb」ファイルを実行