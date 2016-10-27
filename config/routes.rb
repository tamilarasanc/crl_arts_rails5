Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources "categories"
  resources "image_details"
  resources "sections"
  resources "authors"
  resources "articles"
  root "welcome#index"

end
