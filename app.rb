require 'sinatra/base'
require 'sinatra/reloader'
#require './lib/player'
require File.join(File.dirname(__FILE__), 'lib', 'player.rb')


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_two_hp = $player_2.hit_points
    erb :play
  end

  post '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    Game.new.attack($player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
