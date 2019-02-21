Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :employees
 resources :clients
 resources :problems do resources :deeds end
 
 post 'problems/finish/:id' => 'problems#finish', as: 'finish_problem'


 root 'welcome#index'

end
