require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/stars/new" do
    erb :new_star
  end

  post "/stars/new" do
    @name = params[:name]
    @light_years = params[:light_years]
    erb :stars
  end

  get "/stars" do
    erb :stars
  end
end
