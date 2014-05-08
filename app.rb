require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/translate' do
  erb :translate
end

post '/translate' do
  # @translate = PigLatin(param[:text])
  gem 'pig_latin'
  erb :result
end
