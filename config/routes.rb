Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope defaults: { :format => :json } do
    get 'users/list'
    get 'users/get_current_user'
    get 'users/:id/edit' => 'users#edit'
    resources :users, except: :show

    post '/auth/login', to: 'authentication#login'
    get '/*a', to: 'application#not_found'
  end
end

