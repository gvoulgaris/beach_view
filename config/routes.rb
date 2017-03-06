Rails.application.routes.draw do
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
