Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'

get '/groups/:group_id/students/:id/evaluation', to: 'students#evaluation'
  resources :groups do
    resources :students do
      collection do

      end
    end
  end

end
