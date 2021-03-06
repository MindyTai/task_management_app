Rails.application.routes.draw do
  controller :sessions do
    get 'login' => :index
    post 'login' => :create
    delete 'logout' => :destroy
    get 'signup' => :signup_index
    post 'signup' => :signup
  end
  resources :tasks
  resources :admin
  controller :admin do
    get 'adminshow' => :admin_show
  end

  controller :errors do
    get "*path" => :index
  end

end
