require 'sinatra'
require 'bundler'

Bundler.require

# require the models 
require_relative 'models/model.rb'

class MyApp < Sinatra::Base


# endpoints
# get '/' do
#     'Welcome to booklist!'
# end



  get '/' do
    erb :index
  end
  
  get '/about.erb' do
    erb :about
  end
  
  get '/hello.erb' do
      erb :hello
  end

  get '/about.erb' do
      erb :about
  end
  
  post '/calculate' do
    #getting info out of params hash
    first=params[:num1].to_f
    second=params[:num2].to_f
    user_birth=params[:birthday]
    #calculating using info from params
    @sum=add(first,second)
    @days_alive=years_alive(user_birth)
    #directing to our results page
    erb :results
  end

    post '/greet' do
        params.to_s
        erb :welcome
    end
end