require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :"stylesheets/#{params[:name]}"
end

get '/' do
  haml :index
end

get '/:view' do
  haml :"#{params[:view]}"
end