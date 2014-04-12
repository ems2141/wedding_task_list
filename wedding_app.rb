require 'sinatra/base'

class WeddingApp < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/' do
    params[:wedding_task]
  end
end