Rails.application.routes.draw do
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :attendances
  resources :employees

  resources :stores
  get 'store/:id/reports', to: 'stores#reports', as: 'store_reports'
  get 'store/:id/reports/attendance_by_day', to: 'stores#reports_att_by_day', as: 'store_reports_att_by_day'
  post 'store/:id/reports/attendance_by_day/date', to: 'stores#reports_att_by_day_date',
                                                   as: 'store_reports_att_by_day_date'

  # Report routes
  get '/reports', to: 'reports#index'
  get '/reports/attendance_by_day', to: 'reports#attendance_by_day'
  get '/reports/monthly_absence_employee', to: 'reports#monthly_absence_employee'
  get '/reports/monthly_average_hours_emp', to: 'reports#monthly_average_hours_emp'

  # Session routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
