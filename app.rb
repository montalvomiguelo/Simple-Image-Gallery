require 'sinatra/base'

class App < Sinatra::Base
  get "/" do
    @images = Image.all
    erb :index
  end

  post '/images' do
    @image = Image.new params[:image]
    @image.save

    redirect '/'
  end
end
