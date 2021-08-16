Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lists, only: %i[index create destroy]
      resources :records, only: %i[index create show update destroy]
    end
  end
end
