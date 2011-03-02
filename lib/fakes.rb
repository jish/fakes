require 'rubygems'
require 'sinatra/base'

class Fakes < Sinatra::Base

  get '/' do
    "Fakes app. Go to a status code to get it returned."
  end

  get '/401' do
    [401, {"Content-Type" => "application/json"}, ["{\"error\":\"Unauthorized\"}\n"]]
  end

  get '/500' do
    [500, {}, ["HTTPInternalServerError\n"]]
  end

  get '/503' do
    [503, {"Content-Type" => "text/html"}, ["<html></html>\n"]]
  end

end
