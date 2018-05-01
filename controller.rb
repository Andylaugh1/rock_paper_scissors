require('sinatra')
require('sinatra/contrib/all') if development?
require_relative("models/game")

get '/game/:hand1/:hand2' do
  Game.play(params[:hand1], params[:hand2])
end
