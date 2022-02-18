Rails.application.routes.draw do
  get 'purchase_orders/index'

  get 'purchase_orders/new'

  post 'purchase_orders/new'

  post 'purchase_orders/create'

  get 'purchase_orders/edit'

  post 'purchase_orders/update'

  post 'purchase_orders/delete'

  get 'purchase_orders/delete'

  get 'purchase_orders/add'

  get 'prices/index'

  get 'parts/index'

  get 'vendors/index'

  post 'prices/index'

  post 'parts/index'

  post 'vendors/index'

  get 'vendors/new'

  get 'parts/new'

  get 'prices/new'

  post 'vendors/new'

  post 'parts/new'

  post 'prices/new'

  post 'vendors/create'

  post 'parts/create'

  post 'prices/create'

  get 'vendors/edit'

  post 'vendors/update'

  get 'vendors/delete'

  get 'prices/edit'

  post 'prices/update'

  get 'prices/delete'

  get 'parts/edit'

  post 'parts/update'

  get 'parts/delete'

  get 'main_menu/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
