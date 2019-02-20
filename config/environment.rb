ENV['SINATRA_ENV'] ||= "development"

SINATRA_ACTIVESUPPORT_WARNING=false

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
set :database, 'sqlite3:db/database.db'

require './app'
