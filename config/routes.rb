Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products do
        collection do
          get 'search_product'
        end
      end
    end
  end
end
