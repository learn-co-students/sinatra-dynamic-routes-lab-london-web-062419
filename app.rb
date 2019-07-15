require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/reversename/:name' do
    @user_name = params[:name]
    reverse_name = @user_name.reverse
    "#{reverse_name}"
    # params[:name].reverse their solution
    end


    get '/square/:number' do
      @square = params[:number].to_i * params[:number].to_i
      "#{@square}"
    end

    # get "/say/:number/:phrase" do
    #   @phrase_time = params[:phrase] * params[:number].to_i 
    #   "#{phrase_time}"
    # end

    get "/say/:number/:phrase" do
      final_string = ""
      (params[:number].to_i).times do
        final_string += "#{params[:phrase]}\n"
      end
      final_string
     end


     get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end


    get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = "Unable to perform this operation"

    case params[:operation]
    when "add"
      answer = (number1 + number2).to_s
    when "subtract"
      answer = (number1 - number2).to_s
    when "multiply"
      answer = (number1 * number2).to_s
    when "divide"
      answer = (number1 / number2).to_s
    end
  end

      




end