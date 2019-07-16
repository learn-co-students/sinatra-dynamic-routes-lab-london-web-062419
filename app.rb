require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @name = params[:name].reverse
    "#{@name}"
  end 

  get "/square/:number" do 
    @number = params[:number].to_i ** 2
    "#{@number}"
  end
  
  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeated = @phrase * @number
    "#{@repeated}"
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    # binding.pry
    # @with_period = @words.join(' ')<< "."
    # "#{@with_period}" VERY LONG WAY ROUND. ^^^^ BETTER SOLUTION
  end 

  get "/:operation/:number1/:number2" do 
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else 
      answer = "Unable to perform this action"
    end 

    answer.to_s

  end

end
# describe 'GET /:operation/:number1/:number2' do
#   it 'adds two numbers together' do
#     get '/add/215/93'

#     expect(last_response.status).to eq(200)
#     expect(last_response.body).to include('308')
#   end

#   it 'subtracts the second number from the first' do
#     get '/subtract/291/174'

#     expect(last_response.status).to eq(200)
#     expect(last_response.body).to include('117')
#   end

#   it 'multiplies two numbers together' do
#     get '/multiply/12/11'

#     expect(last_response.status).to eq(200)
#     expect(last_response.body).to include('132')
#   end

#   it 'divides the first number by the second number' do
#     get '/divide/612/4'

#     expect(last_response.status).to eq(200)
#     expect(last_response.body).to include('153')