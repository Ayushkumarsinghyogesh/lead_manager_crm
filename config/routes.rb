# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  root "leads#dashboard"
  resources :leads
  get "dashboard", to: "leads#dashboard"

end
