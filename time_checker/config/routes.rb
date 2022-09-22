Rails.application.routes.draw do
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :attendances
  resources :stores
  resources :employees

  #Report routes
  get '/reports/attendance_by_day', to: 'reports#attendance_by_day'
  get '/reports/monthly_absence_employee', to: 'reports#monthly_absence_employee'
  get '/reports/monthly_average_hours_emp', to: 'reports#monthly_average_hours_emp'

  # Session routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
