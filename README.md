# pollingrails
polling api by ruby on rails

$ rails new poll --api
$ cd poll
rails g model Polling candidate_id:integer session_id:string created_at:timestamps updated_at:timestamps
rails g model Ranking name:text url:string count:integer created_at:timestamps updated_at:timestamps
rails db:create

sqlite3 db/development.sqlite3
select * from sqlite_master;

rails db:migrate
