Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    get "/query_params_url" => "params_example#query_params_method"
    get "/guess_number_url" => "params_example#guess_number_method"
  end
end
