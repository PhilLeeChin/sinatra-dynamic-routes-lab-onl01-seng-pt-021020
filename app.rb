require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    solve = params[:number].to_i ** 2
    "#{solve.to_s}"
  end

  get '/say/:number/:phrase' do
    statement = ''
    params[:number].to_i.times do
      statement += params[:phrase]
    end
    statement
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end

  get '/:operation/:number1/:number2' do

  end

end
