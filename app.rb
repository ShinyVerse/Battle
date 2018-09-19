require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    session[:game] = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game =  session[:game]
    erb :play
  end

  post '/player1_attacks' do
    session[:game].attack(1)
    redirect '/dead' if @game.player2.hp == 0
    redirect '/play'
  end

  get "/dead" do
    "STOP! THEY\'RE ALREADY DEAD!"
  end

  run! if app_file == $0
end
