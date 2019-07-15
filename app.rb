require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @together = @phrase * @number
    "#{@together}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}" + "."

  end



  # get '/:operation/:number1/:number2' do
  #   operation = params[:operation]
  #   number1 = params[:number1].to_i
  #   number2 = params[:number2].to_i
  #   if operation == "add"
  #     answer = number1 + number2
  #   elsif operation == "subtract"
  #     answer = number1 - number2
  #   elsif operation == "multiply"
  #     answer = number1 * number2
  #   elsif operation == "divide"
  #     answer = number1 / number2
  #   else
  #     answer = "Unable to perform this operation"
  #   end
  #   answer.to_s
  # end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end


end