require 'sinatra/base'
require 'sinatra/reloader'

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
    player_one = Player.new(params[:player_1])
    player_two = Player.new(params[:player_2])
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.player_two)
    erb(:attack)
  end

  run! if app_file == $0
end
