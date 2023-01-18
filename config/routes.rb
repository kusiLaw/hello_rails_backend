Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'messages#greetings'

  namespace :api do
   namespace :v1 do
       # gets '/greetings', to: 'messages#greetings'
       resources :messages, only: %i[index] do
        
       end
    end
  end

end
