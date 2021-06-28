Rails.application.routes.draw do
  root "pages#home"
  
  get "bands", to: "bands#index", as: "bands"
  get "bands/:id", to: "bands#show", as: "band"
end
