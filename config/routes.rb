Rails.application.routes.draw do

  scope module: :public do
    devise_for :users
    post '/guest_sign_in',      to:'users#guest_sign_in',   as: :guest_sign_in
    root to: 'homes#top'
    get 'homes/about',          to: 'homes#about',          as: :about
    resources :stamps,  only: [:new]
    get 'bookmarks/user_index', to: 'bookmarks#user_index', as: :bookmarks_index
    resources :comments,only: [:new,:index,:edit]
    get 'comments/user_index',  to: 'comments#user_index',  as: :comments_index
    resources :movies,  only: [:new,:index,:show,:edit]
    resource :users,    only: [:show,:edit]
    get 'users/confirm',        to: 'users#confirm',        as: :confirm

  end

  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: 'admin/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
