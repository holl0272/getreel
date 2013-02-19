Reelz::Application.routes.draw do
  resources :actors, :collections, :movies, :movie, :actor
  root :to => 'home#home'
end
