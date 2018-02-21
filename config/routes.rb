Rails.application.routes.draw do
  root "welcome#index"

      namespace :api do
        namespace :v1 do
          get '/games/:id/plays', :to => "games#show"
          post '/games/:id/plays', :to => "games#create"

          resources :games

        end
      end
end
