Rails.application.routes.draw do
  resources :links
  get 'welcome/index'
  root 'links#index'
  # root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
