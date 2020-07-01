Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'trades#index'
  resources:trades
  get "/log_view" => "trades#log_view"
end
