require "sequel"

ENV["RACK_ENV"] ||= "development"

DB = Sequel.connect "sqlite://db/#{ENV["RACK_ENV"]}.sqlite3"

DB.create_table :images do
  primary_dey :id
  String :title
  String :file
end
