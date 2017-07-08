Rails.application.routes.draw do
  devise_for :companies, controllers: {
  sessions:      'companies/sessions',
  passwords:     'companies/passwords',
  registrations: 'companies/registrations'
  }

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }
  root "offers#index"
  resources :offers, only:[:index, :new, :create, :show] do
    resources :applies, only:[:create]
  end
  resources :users, only:[:show]
  resources :companies, only: [:show]
end
