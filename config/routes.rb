StudentFrame::Application.routes.draw do


  match 'log_in' => 'sessions#new'
  match 'log_out' => 'sessions#destroy'
  match 'sessions/create' => 'sessions#create'
  match 'front_pages/front_page' => 'front_pages#front_page'
  match 'agendas/current_agenda' => 'agendas#current_agenda'
  match 'articles/other_news'    => 'articles#other_news'
  match 'posts/commentary'       => 'posts#commentary'
  match 'about_pages/about_page' => 'about_pages#about_page'
  match 'cms_pages/cms_page'     => 'cms_pages#cms_page'
  match '/cms/'                  => 'cms_pages#cms_page'
  
  resources :about_pages
  resources :blogs
  resources :front_pages
  resources :posts
  resources :articles
  resources :talk
  resources :agendas
  resources :users

  root :to => 'front_pages#initial_front_page'
  
end
