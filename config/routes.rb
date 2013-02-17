Reelz::Application.routes.draw do
  resources :actors, :collections, :movies
  root :to => 'home#home'

end
