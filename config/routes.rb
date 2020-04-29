Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#show', id: 'index'
  get "/*id" => 'pages#show', as: :static_page, format: false
end
