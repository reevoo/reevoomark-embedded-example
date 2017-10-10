Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'application#index'
  get '/product_reviews' => 'application#product_reviews'
  get '/customer_experience' => 'application#customer_experience'
  get '/customer_experience_v1' => 'application#customer_experience_v1'
  get '/conversations' => 'application#conversations'
  get '/old_product_reviews' => 'application#old_product_reviews'
  get '/old_customer_experience' => 'application#old_customer_experience'
  get '/old_conversations' => 'application#old_conversations'
  get '/badges' => 'application#badges'
end
