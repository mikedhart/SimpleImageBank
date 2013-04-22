SimpleImageBank::Engine.routes.draw do
  resources :image_types
  resources :images
  resources :image_banks do
  	resources :images
  end


end
