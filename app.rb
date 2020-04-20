require_relative 'config/environment'

class App < Sinatra::Base
  configure do
  enable :sessions
  set :sessions_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    binding.pry
    @session[:item] = params[:item]
    # binding.pry
    erb :checkout
  end
end
