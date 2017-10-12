Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'

  get '/groups/:group_id/students/:id/evaluation', to: 'students#evaluation'
  get '/groups/:group_id/random_student', to: 'students#random'
  resources :groups do
    resources :students do
      collection do

      end
    end
  end

end
