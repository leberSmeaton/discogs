Rails.application.routes.draw do
  root "pages#home"
  
  get "bands", to: "bands#index", as: "bands"
  post "bands", to: "bands#create"
  get "bands/new", to: "bands#new", as: "new_bands"
  get "bands/:id", to: "bands#show", as: "band"
  delete "bands/:id", to: "bands#destroy" #using the same prefix as "band", but you don't need to include it.
end
