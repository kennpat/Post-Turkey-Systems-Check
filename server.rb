# Patrick Kennedy
# Systems check - post Turkey Day

require 'pg'
require 'pry'
require 'sinatra/reloader'

def db_connection
	begin

		connection = PG.connect(dbname: 'recipes')

		yield(connection)

	ensure
		connection.close
	end
end

get '/' do 
	erb :'/recipes'	
end
	


