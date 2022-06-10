require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'
require 'pg'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override # used to turn post requests into delete or patch (update)

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do 
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do 
    p params
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec_params("DELETE FROM bookmarks WHERE id = $1", [params[:id]])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/edit' do 
    @bookmark_id = params[:id]
    erb :'bookmarks/edit'
  end

  patch '/bookmarks/:id' do 
    p params 
    Bookmark.update(id: params[:id], url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
