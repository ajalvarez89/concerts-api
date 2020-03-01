Rails.application.routes.draw do
#   scope :api, defaults: { format: :json } do
#     scope :v1 do
#       devise_for :users, controllers: { sessions: 'api/v1/users/sessions' }
#     end
#   end
# end
  # devise_for :users, controllers: { sessions: 'api/v1/users/sessions' }

  # devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }, skip: [:sessions]
  # as :user do
  #   get 'users/sign_in' => 'sessions#new', :as => :new_user_session
  #   post 'users/sign_in' => 'sessions#create', :as => :user_session
  #   get 'users/sign_out' => 'sessions#destroy', :as => :destroy_user_session
  # end

  # scope :api, defaults: { format: :json } do
  #   scope :v1 do
  #     get 'user/:id', to: 'api/v1/users#show'
  #     get 'users/index', to: 'api/v1/users#index'
  #     devise_for :users
  #     devise_scope :user do
  #       match '/sign_up', to: 'api/v1/users/registrations#create', via: :post
  #       match '/sign_in', to: 'api/v1/users/sessions#create', via: :post
  #     end
  #   end 
  # end

  scope :api, defaults: { format: :json } do
    scope :v1 do
      # devise_for :users

        match '/concerts', to: 'api/v1/concerts#index', via: :get
        match '/concerts/:id', to: 'api/v1/concerts#show', via: :get
        match '/comments', to: 'api/v1/comments#create', via: :post
      end
    end
end