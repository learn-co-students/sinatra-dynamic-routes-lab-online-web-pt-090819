require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  
  get '/square/:number' do 
    @value = params[:number].to_i
    @sqr = @value * @value
    "#{@sqr}"
  end 
  
  get '/say/:number/:phrase' do
    @value = params[:number].to_i
    @str = []
    @value.times do
      @str << params[:phrase]
    end 
    @str.flatten
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @user_name = "#{params[:word1]}"+" #{params[:word2]}" +" #{params[:word3]}"+" #{params[:word4]}"+" #{params[:word5]}."
    "#{@user_name}"
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      @sum = @num1 + @num2
      "#{@sum}"
    elsif @operation == "subtract"
      @subtraction = @num1 - @num2
      "#{@subtraction}"
    elsif @operation == "multiply"
      @multiblication = @num1 * @num2
      "#{@multiblication}"
    else 
      @divition = @num1 / @num2
      "#{@divition}"
    end 
  end
  
end