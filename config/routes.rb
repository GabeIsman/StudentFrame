StudentFrame::Application.routes.draw do

  match 'front_pages/front_page' => 'front_pages#front_page'
  match 'agendas/current_agenda' => 'agendas#current_agenda'
  match 'about_pages/about_page' => 'about_pages#about_page'
  match 'cms_pages/cms_page'     => 'cms_pages#cms_page'
  
  resources :about_pages
  resources :front_pages
  resources :posts
  resources :articles
  resources :talk
  resources :agendas
  resources :users

  root :to => 'front_pages#initial_front_page'
  
end
