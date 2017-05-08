require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'

# this class responds to a table in the database
class Link
  # add DataMapper functionality to this class so it
  # can communitcate with databases
  include DataMapper::Resource
  # these property declarations set the column headers in the 'link's table
  property :id, Serial
  property :title, String
  property :url, String
end
# setting up connection with database
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
# checking if everything in model was OK
DataMapper.finalize

DataMapper.auto_upgrade!
