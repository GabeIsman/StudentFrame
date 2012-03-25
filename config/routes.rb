StudentFrame::Application.routes.draw do
  
  resources :about_pages
  resources :front_pages
  resources :posts
  resources :articles
  resources :talk
  resources :agendas
  resources :users
  
  root :to => 'front_pages#front_page'
  
end
