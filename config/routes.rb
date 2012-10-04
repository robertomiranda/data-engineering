DataEngineering::Application.routes.draw do
  resources :inputs, :only => [:new, :create]
  root to: 'inputs#new'
end
