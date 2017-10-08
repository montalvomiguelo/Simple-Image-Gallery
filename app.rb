require 'sinatra/base'

class App < Sinatra::Base
  get "/" do
    "Hello Image Gallery!"
  end
end
