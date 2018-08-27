# pollingrails
polling api by ruby on rails


## APIプロジェクト生成

$ rails new poll --api

# データ処理

## DB作成
rails db:create

## モデル生成

$ cd poll
rails g model Polling candidate_id:integer session_id:string created_at:timestamps updated_at:timestamps
rails g model Candidate name:text url:string likes:integer created_at:timestamps updated_at:timestamps


## テーブル最新化
rails db:migrate

## テーブル確認

sqlite3 db/development.sqlite3
select * from sqlite_master;

## 初期データ投入

/pollingrails/poll/db/seeds.rb

rake db:seed

## データ初期化手順

```
以下２つのDBファイルを削除
db/development.sqlite3
db/test.sqlite3
# DB作成、テーブル更新、初期データ投入
rails db:create
rails db:migrate
rake db:seed
```

# 動作確認

## サーバー起動

```coffeescriptliterate
cd /root/poll
bundle install
rails s
```

## ランキング表示

http://localhost:3000/api/ranking/

## 投票

http://localhost:3000/api/like/?candidate_id=1

## 使い方

cookie値にcountとSSIDが保存され、cookie削除しない限り再投票で更新可能です。
Chrome developper tools application cookie で確認、削除できます。

# jquery

docker exec -t apache-container bash
curl http://rails-container:3000/api/like/?candidate_id=1

# react

共有フォルダ以外でプロジェクトフォルダを作成してビルドする

```coffeescript
docker exec -it nodejs-container bash
cd /tmp
create-react-app hello-world
mv ./hello-world /root/react/
cd ~/react/hello-world
npm start
---
http://localhost:8080
```
