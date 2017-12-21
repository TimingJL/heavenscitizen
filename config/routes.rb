Rails.application.routes.draw do
  resources :words
  resources :word_content_categories
  resources :service_type_categories
  resources :service_time_categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :links do
      resources :words
  end

  get 'welcome/index'
  root 'links#index'
  # root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
