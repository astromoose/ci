require 'rubygems'
require 'sinatra'
require 'sequel'

db = Sequel.sqlite('./cosplayisland.db')

#db.create_table :columns do
#  primary_key :id
#  String :name
#end

dbcolumns = db[:columns]

get '/' do
erb :index
end
