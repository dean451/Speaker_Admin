Rails.application.routes.draw do

  get 'static_pages/sessions'

  get 'static_pages/csas'

  get 'static_pages/staff'

  root 'static_pages#sessions'


end
