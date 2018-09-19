require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    session[:player1] = Player.new(params[:player1])
    session[:player2] = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  post '/player1_attacks' do
    session[:player2].update_hp
    redirect '/dead' if session[:player2].hp == 0
    redirect '/play'
  end

  get "/dead" do
    "STOP! THEY\'RE ALREADY DEAD!"
  end

  run! if app_file == $0
end
