require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do
    "Battle!"
    erb(:index)
  end

  post '/names' do
    
    session[:Player_1_Name] = params[:Player_1_Name]
    session[:Player_2_Name] = params[:Player_2_Name]
    
    p "params below"
    p params

    redirect to '/play'
    
  end

  get '/play' do
    @p1 = session[:Player_1_Name]
    @p2 = session[:Player_2_Name]
    erb(:play)
  end

  get '/attack' do
    @p1 = session[:Player_1_Name]
    @p2 = session[:Player_2_Name]  
    erb(:attack)
  end


  run! if app_file == $0

end