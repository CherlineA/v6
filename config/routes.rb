Rails.application.routes.draw do
 
  
  
    #resources :pokemons
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    #get '/pokemons', to: 'pokemons#index', as: 'pokemons'
   namespace :api do
      namespace :v1 do 
         resources :pokemons do 
            resources :typeprincipals
            resources :typesecondaires
            resources :generations            
         end
         #, only: [:create, :index, :update, :destroy]
         
         resources :typeprincipals do 
            resources :pokemons
         end 

         resources :typesecondaires do 
            resources :pokemons
         end 
         resources :generations do 
            resources :pokemons
         end   
      end   
   end
end
