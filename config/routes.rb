Rails.application.routes.draw do
  root "articles#index"
  resources :articles

  authenticate :user, -> (user) { user.admin? } do
    mount RailsPerformance::Engine, at: 'rails/performance'
  end
end
