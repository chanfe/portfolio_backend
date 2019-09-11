Rails.application.routes.draw do
  get 'awards/index'
  get 'awards/show'
  get 'awards/create'
  get 'awards/delete'
  get 'projects/index'
  get 'projects/show'
  get 'projects/create'
  get 'projects/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
