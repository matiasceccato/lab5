Rails.application.routes.draw do
  resources :monsters, only: [:index, :create, :update, :new, :edit]

  root "monsters#index"
end
