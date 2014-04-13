require 'sinatra/base'

class WeddingApp < Sinatra::Application

  get '/' do
    wedding_table = DB[:wedding_tasks]
    erb :index, locals: {wedding_tasks: wedding_table.to_a}
  end

  post '/' do
    wedding_table = DB[:wedding_tasks]
    wedding_table.insert(name: params[:wedding_task])
    redirect '/'
  end
end