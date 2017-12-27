Rails.application.routes.draw do
  resources :matches

  devise_for :admins, path: 'admins', controllers: { 
        confirmations: "admins/confirmations",
        mailer: "admins/mailer",
        passwords: "admins/passwords",
        registrations: "admins/registrations",
        sessions: "admins/sessions",
        shared: "admins/shared",
        unlocks: "admins/unlocks"  
  }

  devise_for :users, path: 'users', controllers: { 
    confirmations: "users/confirmations",
    mailer: "users/mailer",
    passwords: "users/passwords",
    registrations: "users/registrations",
    sessions: "users/sessions",
    shared: "users/shared",
    unlocks: "users/unlocks"  
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "matches#index"

end
