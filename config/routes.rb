Rails.application.routes.draw do
  get 'message/index'
  get 'message/add'
  get 'message/edit'
  get "message/show"
  post "message/add", to: "message#create"
  get "message/edit/:id", to: "message#edit"
  patch "message/edit/:id", to: "message#update"
  get "message",to: "message#index"
  get "message/delete/:id", to: "message#delete"
  get "message/:id", to:"message#show"
  get 'cards/index'
  get 'cards/show'
  get 'cards/add'
  get 'cards/edit'
  get "cards/:id", to: "cards#show"
  get 'cards/', to: "cards#index"
  post "cards/add"
  get  "cards/edit/:id", to: "cards#edit"
  patch "cards/edit/:id", to: "cards#edit"
  get "cards/delete/:id", to: "cards#delete"
  get 'people/index'
  get 'msgboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'hello/index'
  get 'hello/other'
  get 'hello', to: 'hello#index'
  post 'hello/index'
  post 'hello', to: 'hello#index'
  get  'msgboard',to: 'msgboard#index'
  post 'msgboard',to: 'msgboard#index'
  get  'msgboard/index'
  post 'msgboard/index'
  get  'people',to: 'people#index'
  get "people/add"
  get "people/edit" 
  get "people/find"
  post "people/find"
  get "people/delete/:id", to:"people#delete"
  post "people/add",to: "people#create"
  get "people/edit/:id", to: "people#edit"
  patch "people/edit/:id", to: "people#update"
  get 'people/:id', to: 'people#show'
  
  
  # Defines the root path route ("/")
  # root "posts#index"
end
