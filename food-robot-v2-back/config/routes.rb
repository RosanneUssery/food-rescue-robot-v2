Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :volunteers
      resources :transport_types
      resources :schedules
      resources :schedule_volunteers
      resources :schedule_parts
      resources :schedule_chains
      resources :scale_types
      resources :regions
      resources :logs
      resources :log_volunteers
      resources :log_recipients
      resources :log_parts
      resources :locations
      resources :food_types
      resources :cell_carriers
      resources :assignments
      resources :absences_logs
      resources :absences
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
  
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
end
