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
    @session = params
    erb :checkout
  end
end
