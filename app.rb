require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/translate' do
  erb :translate
end

post '/translate' do
  @input = params[:name]
  @input = PigLatin.moderator(@input)
  erb :result
end
