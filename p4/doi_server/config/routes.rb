Rails.application.routes.draw do

  # rating's routes will be nested inside a professor for index, new, and create
  # rating route: 
  #      /professors/:professor_id/ratings
  #      /professors/:professor_id/ratings/new
  #      /professors/:professor_id/ratings/create

  # rating's routes will NOT be nested for show, edit, update, destroy
  # /ratings/:id/
  resources :fingerprints do
    resources :sites, shallow: true
  end

  root 'fingerprints#index'
  get 'input', to: 'fingerprints#show'
end
