ProTemplateApp::Application.routes.draw do
  resources :blog_entries

  devise_for :users

  root :to => "home#index"
end
