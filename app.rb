require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do 
    @product = params[:number].to_i
    @square = @product * @product
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do 
    @numbers = params[:number].to_i
    @phrase = params[:phrase]
    phrases = ""
    @numbers.times do 
      phrases += "#{@phrase} "
    end
    phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
  
     "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
  case @operation
    when "add"
      @answer = @num1 + @num2
    when "subtract"
      @answer = @num1 - @num2
    when "multiply"
      @answer = @num1 * @num2
    when "divide"
      @answer = @num1 / @num2
  
    
    end
    "#{@answer}"
  end





  
   

 


end