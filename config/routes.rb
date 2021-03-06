Rails.application.routes.draw do
  
  root :to => "categories#show"

  devise_for :users 
  resources :users, :only => [:index, :show]

  resources :posts do 
    resources :comments
  end

  resources :categories, except: [:index] do  
    resources :posts do
      resources :comments
    end
  end

  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/faq',     to: 'static_pages#faq',     via: 'get'

end

