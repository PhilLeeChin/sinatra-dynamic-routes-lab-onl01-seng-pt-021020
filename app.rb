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
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    solution = params[:number1].to_i + params[:number2].to_i
    "#{solution.to_s}"
  end

end
