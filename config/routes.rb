Rails.application.routes.draw do
  resources :messages
  resources :chats do
    resources :messages do 
      collection do
        get 'search'
      end  
    end
  end  
  resources :applications do 
    resources :chats
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
