require 'bundler'
Bundler.require

require_relative '../lib/song'

# Notice that the value of the connection in this hash is actually a new instance of the SQLite3::Database class. This is how we will connect to our database. Our database instance responds to a method called execute that accepts raw SQL as a string. Let's pass in that SQL we stored above
DB = { conn: SQLite3::Database.new("db/music.db") }
