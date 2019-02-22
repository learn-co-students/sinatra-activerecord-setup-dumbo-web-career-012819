ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# sets up a connect to a sqlite3 database named 'database.rb'
# located in 'db' directory
configure :development do
    set :database, 'sqlite3:db/database.db'
end
# you could have named 'database.rb' anything you wanted

# but you haven't made any files for the db yet?
# that's where your Rakefile comes into play!

require './app'
