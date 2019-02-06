Rails.application.routes.draw do
  resources :posts do
    resources :commments, only: :create
  end

  root 'posts#index'
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
