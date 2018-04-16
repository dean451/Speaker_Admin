Rails.application.routes.draw do

  get 'static_pages/IMPORTS'

  get 'static_pages/SESSIONS'

  get 'static_pages/CSAS'

  get 'static_pages/STAFF'

  get 'static_pages/IMPORT_ERRORS'

  root 'application#hello'


end
