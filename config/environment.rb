require 'bundler'
require 'pry'
require 'tty-prompt'
Bundler.require
ActiveRecord::Base.logger= nil

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db') 
#ActiveRecord::Base.logger.level=1
require_all 'lib'
require_all 'app'



