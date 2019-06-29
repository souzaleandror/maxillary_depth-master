Rails.application.routes.draw do
  resources :exams
  resources :points
  resources :types_exams
  get 'search/index', as: :search
  resources :patients
  root to: "patients#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
