Rails.application.routes.draw do
  root "pages#home"
  
  get "bands", to: "bands#index", as: "bands"
end
