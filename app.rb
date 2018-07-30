require 'sinatra/base'
require './models/bookmark.rb'

class BookmarkManager < Sinatra::Base

get '/' do
  erb :index
end

get '/filter' do
  erb :filter
end

get '/bookmarks' do
  @bookmark = Bookmark.new
  erb :bookmarks
end

run! if app_file == $0

end
