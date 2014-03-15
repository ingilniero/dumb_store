DumbStore::Application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :products
      resources :providers
      resources :addresses
    end
  end
end

