Rails.application.routes.draw do
  root :to => "beaches#index"
  # Routes for the Island resource:
  # CREATE
  get "/islands/new", :controller => "islands", :action => "new"
  post "/create_island", :controller => "islands", :action => "create"

  # READ
  get "/islands", :controller => "islands", :action => "index"
  get "/islands/:id", :controller => "islands", :action => "show"

  # UPDATE
  get "/islands/:id/edit", :controller => "islands", :action => "edit"
  post "/update_island/:id", :controller => "islands", :action => "update"

  # DELETE
  get "/delete_island/:id", :controller => "islands", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Beach resource:
  # CREATE
  get "/beaches/new", :controller => "beaches", :action => "new"
  post "/create_beach", :controller => "beaches", :action => "create"

  # READ
  get "/beaches", :controller => "beaches", :action => "index"
  get "/beaches/:id", :controller => "beaches", :action => "show"

  # UPDATE
  get "/beaches/:id/edit", :controller => "beaches", :action => "edit"
  post "/update_beach/:id", :controller => "beaches", :action => "update"

  # DELETE
  get "/delete_beach/:id", :controller => "beaches", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
