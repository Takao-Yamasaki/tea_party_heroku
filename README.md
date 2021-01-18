# Tearip（ティリップ）
茶摘み体験に特化した予約サービスです。

## アプリの概要
日本では、平地で機械摘みしている茶園が多いですが、なかには、傾斜地で手摘みしている茶園もあります。  
手摘みは、芽を見ながら、人の手で行われるので、とても時間と労力が掛かります。  
Tearipは、旅行者に楽しみながら茶摘みをしてもらい、「お茶ファン」となってもらうことを目的とした、茶摘み体験に特化した予約サービスです。  

### デモ
デモページ公開中です。  
https://tearip.herokuapp.com/  

## アプリの機能
### Ruby on Railsで開発したアプリです  
* 体験検索機能（ransack）
* 体験予約機能
* 体験投稿機能
* お気に入り登録機能（非同期処理）
* GoogleMap表示機能（GoogleMap API）  
* 体験にコメントを付ける機能（raty）
* 認証機能（devise）  
* 画像投稿機能（S3,carrierwave）
* ページネーション機能（kaminari）
* データベース（PostgreSQL）
* インフラ（Heroku）

## 使い方
1.画面右上の「ログイン」からテストユーザでログイン  
2.体験一覧ページから予約したい体験をクリック  
3.体験詳細ページから「予約する」をクリック  

## インストール
    $ git clone https://github.com/Takao-Yamasaki/tea_party
    $ cd tea_party
    $ bundle install

## その他
現在開発中であり、今後はRspecを使ったテストコードを追加予定です。  

## 作者
山崎 貴生  
mail to: captain_kaeru@yahoo.co.jp

## ライセンス
This project is licensed free.  
ご自由にご利用ください