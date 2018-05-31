require 'sinatra/base'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    post '/names' do
        session[:p1_name]
        @name_1 = params['p1_name']
        @name_2 = params['p2_name']
        erb :play
    end
    # start the server if ruby file executed directly
    run! if app_file == $0
end