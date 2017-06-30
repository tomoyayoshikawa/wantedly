Rails.application.routes.draw do
  devise_for :users
  devise_for :companies
  root "offers#index"
end
