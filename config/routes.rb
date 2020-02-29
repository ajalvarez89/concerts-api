Rails.application.routes.draw do
#   scope :api, defaults: { format: :json } do
#     scope :v1 do
#       devise_for :users, controllers: { sessions: 'api/v1/users/sessions' }
#     end
#   end
# end
  # devise_for :users, controllers: { sessions: 'api/v1/users/sessions',
  #                                   registrations: 'api/v1/users/registrations' }
  devise_for :users

  scope :api, defaults: { format: :json } do
    scope :v1 do
      get 'users', to: 'api/v1/users#show'

      devise_scope :user do
        match '/sign_up', to: 'api/v1/users/registrations#create', via: :post
        match '/sign_in', to: 'api/v1/users/sessions#create', via: :post
      end
    end 
  end
end