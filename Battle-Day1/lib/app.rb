require 'sinatra'
require 'shotgun'

configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  "Hello World"
end

get '/secret' do
  "one more time please"
end

get '/parrot-pizza-parlor' do
  "Parrots are NOT on the pizza"
end

get '/cat' do
  "div { border: medium dashed red; }
  <div><img src='https://www.vets4pets.com/siteassets/species/cat/kitten/tiny-kitten-in-sunlight.jpg'></div>"
end
