Rails.application.routes.draw do
  resources :multas
  resources :detalles
  resources :multa
  resources :prestamos
  resources :libros
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "application#index"
end
