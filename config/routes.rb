Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
	  root to: 'posts#index', as: :authenticated_root
	end
	root to: redirect('/users/sign_in')
  resource :posts do 
    collection do 

    end
  end
  resource :follows do
  	get :find_friends
    get :friends
  end

  match :like, to: 'likes#create', as: :like, via: :post
  match :unlike, to: 'likes#destroy', as: :unlike, via: :post
end
