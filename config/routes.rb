Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :digitals
    end
  end

  get '/digital/:secret', :to => 'download_digitals#show', :via => :get, :as => 'digital', :constraints => { :secret => /[a-zA-Z0-9]{30}/ }

end
