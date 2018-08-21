# pollingrails
polling api by ruby on rails

$ rails new poll --api
$ cd poll
rails g model Polling candidate_id:integer session_id:string created_at:timestamps updated_at:timestamps
rails g model Candidate name:text url:string likes:integer created_at:timestamps updated_at:timestamps
rails db:create

sqlite3 db/development.sqlite3
select * from sqlite_master;

rails db:migrate


## 初期データ投入

/pollingrails/poll/db/seeds.rb

rake db:seed