Rails.application.routes.draw do
  resources :tree_branches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tree_branches#home'

end
