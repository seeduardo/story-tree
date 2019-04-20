Rails.application.routes.draw do

  root 'tree_branches#home'
  get 'tree_branches/:id', to: 'tree_branches#show', as: "tree_branch"
  get 'tree_branches/:id/up', to: 'tree_branches#up'
  get 'tree_branches/:id/left', to: 'tree_branches#left'
  get 'tree_branches/:id/right', to: 'tree_branches#right'
  get 'tree_branches/:id/down', to: 'tree_branches#down'

end
