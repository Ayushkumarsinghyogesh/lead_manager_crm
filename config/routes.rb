# config/routes.rb
Rails.application.routes.draw do
  root "leads#dashboard"
  resources :leads
  get "dashboard", to: "leads#dashboard"
end
