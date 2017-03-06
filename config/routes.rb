Rails.application.routes.draw do
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
