# myapp.rb
require 'sinatra'
name = "Nischay Rathor"
get '/hello' do
  "Hello world! I am #{name}"
end

