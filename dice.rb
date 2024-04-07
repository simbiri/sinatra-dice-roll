require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')



get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  erb(:two_d_six)
end

get("/dice/3/6") do
  first_dice = rand(1..6)
  second_dice = rand(1..6)
  third_dice = rand(1..6)
  sum_up = first_dice + second_dice + third_dice

  @outcome = "You rolled a #{first_dice} and a #{second_dice} and a #{third_dice} for a total of #{sum_up}."
  erb(:three_d_six)
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/") do
  erb(:main)
end

get("/girraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
