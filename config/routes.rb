Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/team'
  get 'static_pages/contact_us'
  get 'static_pages/diagnostic_centers'
  get 'static_pages/adoption_homes'
  get 'static_pages/surgery_centers'


  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
