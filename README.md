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

