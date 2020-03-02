Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    scope :v1 do
        match 'users/:id', to: 'api/v1/users#show', via: :get
        match 'users', to: 'api/v1/users#create', via: :post
        match 'login', to: 'api/v1/sessions#login', via: :post

        match '/concerts', to: 'api/v1/concerts#index', via: :get
        match '/concerts/:id', to: 'api/v1/concerts#show', via: :get

        match '/comments', to: 'api/v1/comments#create', via: :post
      end
    end
end