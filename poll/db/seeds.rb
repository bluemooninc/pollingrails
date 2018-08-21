# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8
Candidate.create(:name => 'aaaa',  :url => 'https://images-na.ssl-images-amazon.com/images/I/619Lo30c%2BZL._UY575_.jpg', :likes => 0)
Candidate.create(:name => 'bbbb',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/51ZUfRsVzIL._AC_SR320,320_.jpg', :likes => 0)
Candidate.create(:name => 'cccc',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/51vbtjCbyRL._AC_SR320,320_.jpg', :likes => 0)
Candidate.create(:name => 'dddd',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/51hgSRuA+2L._AC_SR160,160_.jpg', :likes => 0)
Candidate.create(:name => 'eeee',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/41aLafWrw7L._AC_SR160,160_.jpg', :likes => 0)
Candidate.create(:name => 'eeee',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/41SIYvuy2mL._AC_SR160,160_.jpg', :likes => 0)
Candidate.create(:name => 'gggg',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/31AteENWAnL._AC_SR160,160_.jpg', :likes => 0)
Candidate.create(:name => 'hhhh',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/51xfVZ7vsFL._AC_SR160,160_.jpg', :likes => 0)
Candidate.create(:name => 'iiii',  :url => 'https://images-fe.ssl-images-amazon.com/images/I/41hStCdQ-kL._AC_SR160,160_.jpg', :likes => 0)
Polling.create(:candidate_id => 1,    :session_id => 'aaa')
Polling.create(:candidate_id => 2,    :session_id => 'bbb')
Polling.create(:candidate_id => 3,    :session_id => 'ccc')
Polling.create(:candidate_id => 4,    :session_id => 'ddd')
Polling.create(:candidate_id => 5,    :session_id => 'eee')
Polling.create(:candidate_id => 6,    :session_id => 'fff')
Polling.create(:candidate_id => 7,    :session_id => 'ggg')
Polling.create(:candidate_id => 8,    :session_id => 'hhh')
Polling.create(:candidate_id => 9,    :session_id => 'iii')
Polling.create(:candidate_id => 9,    :session_id => 'jjj')
Polling.create(:candidate_id => 9,    :session_id => 'kkk')
Polling.create(:candidate_id => 8,    :session_id => 'lll')
