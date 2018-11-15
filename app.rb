require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do
      str += params[:phrase]
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = ""
    5.times do |i|
      sym = "word#{i+1}".to_sym
      str += params[sym] + " "
    end
    str.chomp(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    200
  end

end
