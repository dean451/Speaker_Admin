Rails.application.routes.draw do

  root 'static_pages#sessions'

  get '/sessions', to: 'static_pages#sessions'
  get '/csas', to: 'static_pages#csas'
  get '/staff', to: 'static_pages#staff'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

end
