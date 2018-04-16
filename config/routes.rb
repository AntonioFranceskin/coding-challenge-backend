Rails.application.routes.draw do
    scope module: :v1 do
    resources :zombies, only: [:index, :create, :update, :destroy, :show]
    resources :armors, only: [:index, :create, :update, :destroy, :show]
    resources :weapons, only: [:index, :create, :update, :destroy, :show]
    get '/search', to: 'zombies#search'
  end

end
