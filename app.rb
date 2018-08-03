require 'sinatra/base'
require 'sinatra/flash'
require 'uri'
require './models/bookmark.rb'

class BookmarkManager < Sinatra::Base

  register Sinatra::Flash
  enable :sessions

  get '/' do
    erb :index
  end

  post '/manager' do
    if Bookmark.add(params[:title],params[:url]) == 'Bookmark not created'
      flash[:notice] = "Error: URL does not exist"
    else
      flash[:notice] = "Error: URL does not exist"
    end
    redirect ('/manager')
  end

  get '/manager' do
    erb :manager
  end

  get '/bookmarks' do
    flash[:notice]
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0

end
