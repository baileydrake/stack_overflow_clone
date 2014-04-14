Stack::Application.routes.draw do
  resources :questions do
    resources :responses
  end



  # You can have the root of your site routed with "root"
  # root 'welcome#index'


end

