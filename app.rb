require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions
  
  get '/' do
    "Battle!"
    erb(:index)
  end

  post '/names' do
    $Player_1 = Player.new(params[:Player_1_Name])
    $Player_2 = Player.new(params[:Player_2_Name])

    p params

    redirect to '/play'
    
  end

  get '/play' do
    @p1 = $Player_1
    @p2 = $Player_2
    erb(:play)
  end

  get '/attack' do
    @p1 = $Player_1
    @p2 = $Player_2
    @p1.attack(@p2)
    erb(:attack)
  end


  run! if app_file == $0

end