require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        pig = PigLatinizer.new
        @latinized_word = pig.piglatinize(params[:user_phrase])

        erb :show
    end

    get "/show/:word" do

        @latinized_word = params[:word]
    
        erb :show

    end


end