require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  get '/about_us' do
    return erb :about_us
  end
  get '/why_volunteer' do
    return erb :why_volunteer
  end
  get '/FAQS' do
    return erb :FAQS  
  end
  post '/opportunities' do
     return erb :opportunities
   end
   
   get '/opportunities' do
     return erb :opportunities
   end
  get '/organize' do 
    return erb :organize
  end
  
  get '/quiz' do
    return erb :quiz
  end

  
  
    post  '/results' do
   answers = params.values #"value" in index
   @total= 0 #at the beginning of the quiz
   answers.each do |answer| #goes to the array of values
     @total += answer.to_i #adds up numbers that user chose -- also convert to integer bc we're taking in numbers
   end
   puts @total

   @combo = quiz(@total) #refers to the method cool generator we defined in samplemodel 
                                   #-- @total is the argument the method takes in
   if @combo == "low"
     erb :low
   elsif @combo == "average"
     erb :average
    elsif @combo == "high"
      erb :high
    else @combo == "perfect"
      erb :perfect
  end

end
  
end
