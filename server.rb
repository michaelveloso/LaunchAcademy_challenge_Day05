require "sinatra"
require "pry"
require_relative "class_match"
require_relative "class_game"


use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get "/reset" do
  session.clear
  session[:match] = Match.new
  session[:message] = ""
  redirect "/game"
end

get "/game" do
  if session[:match].nil?
    session[:match] = Match.new
  end
  erb :game
end

post "/game/move" do
  this_game = Game.new(params["choice"])
  if this_game.winner == :player
    session[:match].player_won
  elsif this_game.winner == :computer
    session[:match].computer_won
  end
  session[:message] = this_game.summary
  redirect "/game"
end
