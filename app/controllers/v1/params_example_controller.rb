class V1::ParamsExampleController < ApplicationController
  def query_params_method
    if params["name"].first.upcase == "A"
      render json: {
      message: "Hello there! Your name starts with the first letter of the alphabet!",
      name_info: "Your name is #{params["name"].upcase}"
    }
    else 
      render json: {
      message: "Hello there!",
      name_info: "Your name is #{params["name"].upcase}"
    }
    end
  end 

  def guess_number_method
  answer_value = 50
  guess = params["input_value"]
  if guess.to_i > answer_value
    render json: {message: "Guess Lower!"}
  elsif guess.to_i < answer_value
    render json: {message: "Guess Higher!"}
  elsif guess.to_i == answer_value
    render json: {message: "You guessed correct!"}
  end
  end
end

