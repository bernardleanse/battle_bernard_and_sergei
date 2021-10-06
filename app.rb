require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  
  get '/' do
    "Battle!"
    erb(:index)
  end

  post '/names' do
    p params
    p1 = params[:Player_1_Name]
    p2 = params[:Player_2_Name]
    erb(:play)
  end


  run! if app_file == $0

end