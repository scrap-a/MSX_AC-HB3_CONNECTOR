# MSX_AC-HB3_CONNECTOR
SONY製（HB-F1など）やPanasonic製（FS-A1など）の一部MSX機種で採用されている、特殊な形状のACアダプタのコネクタ部分について3Dモデルとして試作してみたものです。SONY製の場合のACアダプタの型番はAC-HB3の模様です（未所有）。

![overview image](image/model_photo.jpg)

# 特殊な形状のACアダプタコネクタ
入力電圧（DC9VとAC12Vの両方）も特殊ながら、コネクタが市販されていない形状であり補修が難しいです。

![overview image](image/socket.jpg)

# 注意事項
当方は3Dモデリングも3Dプリンタ利用も初めてで、対象のACアダプター自体も所有していないため、形状の測定も設計もいい加減です。
本モデルを利用してソケット部分が故障したりしても責任は取れません。可能であれば、改善版を共有頂けますとありがたいです。

# 電気的に接続する部分について
AliExpressで購入した2mmΦのバナナプラグ（メス側）を使用しています。<br>
購入したSHOP:https://ja.aliexpress.com/item/4000439855711.html<br>

![overview image](image/plug.jpg)

精度にバラツキがあるので、ちゃんと受け口にしっかりハマるものを選びます。<br>
![overview image](image/insert_test.jpg)

# モデルについて
OpenSCADで設計しました。srcディレクトリ内にソースも共有しています。モデルのSTLはstlディレクトリにあります。<br>
![overview image](image/model_overview.png)

穴の部分については、バナナプラグ用の穴と細い穴をつなげて、ケーブルだけが接続できるようにしています。<br>
![overview image](image/model_hole.png)
緑色がモデルにあいている穴で、下側の太い方がバナナプラグ用です。

# ケーブルなどの接続について
DC9VとAC12Vの電源をどのように準備するか、どのように接続するかなどの説明はしません。あくまでコネクタのモデルを3Dプリントしたあとどのように扱うかの手順です。<br>
1. あらかじめケーブルを通してバナナプラグ（メス側）にはんだ付けします。<br>
このとき3Dプリントしたモデルは熱に弱いので気を付けること。<br>
接合部は、はんだ付けだけでなくレジンなどで固めた方がいいかも知れませんが、はみ出すとモデル部に収まらなくなります。<br>
![overview image](image/solder.jpg)
2. 穴の部分にバナナプラグを押し込みます。<br>
![overview image](image/push.jpg)
3. ケーブルを電源プラグの受け口などと接続したら完成です。<br>
必要に応じて接合部を熱収縮チューブで覆うなど処理してください。<br>
![overview image](image/finish.jpg)

# 完成品の画像
![overview image](image/finish2.jpg)
![overview image](image/finish3.jpg)
![overview image](image/finish4.jpg)
![overview image](image/finish5.jpg)
![overview image](image/finish6.jpg)
