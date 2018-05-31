require 'sinatra/base'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end



    get '/play' do
        @p1_name = $p1_name.name
        @p2_name = $p2_name.name
        erb :play
    end

    post '/names' do
      $p1_name = Player.new(params[:p1_name])
      $p2_name = Player.new(params[:p2_name])
      redirect '/play'
    end

    get '/attack' do
      @p1_name = $p1_name.name
      @p2_name = $p2_name.name
      erb :attack
    end



    # start the server if ruby file executed directly
    run! if app_file == $0
end
