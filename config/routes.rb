Rails.application.routes.draw do
  
  resources :users
  get 'users/new'

  root 'static_pages#sessions'

  get '/sessions', to: 'static_pages#sessions'
  get '/csas', to: 'static_pages#csas'
  get '/staff', to: 'static_pages#staff'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

end
