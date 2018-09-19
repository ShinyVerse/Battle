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
    session[:player1_hitpoints] = 50
    session[:player2_hitpoints] = 50
    redirect '/play'
  end

  get '/play' do
    @player1_hitpoints = session[:player1_hitpoints]
    @player2_hitpoints = session[:player2_hitpoints]
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  post '/player1_attacks' do
    session[:player2_hitpoints] -= 10
    redirect '/play'
  end

  run! if app_file == $0
end
