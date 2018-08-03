require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views/home'
  end

  get '/' do
    return erb :index
  end
  
  get '/quiz' do
    return erb :quiz
  end  
  
  get '/bullying' do
    return erb :bullying
  end
  
  get '/sexism' do
    return erb :sexism
  end 
  
  get '/racism' do 
    return erb :racism
  end 
  
  get '/lgbtq' do 
    return erb :lgbtq
  end  
  
  get '/environmental' do
    return erb :environmental
  end

  post "/quiz" do
    @ptsarray = params.values
    @sexism_response= params[:sexism]
    @lgbtq_response = params[:lgbtq]
  
    quiz = Quiz.new
    @message = quiz.play_quiz(@ptsarray)
    return erb :results
  end
end
