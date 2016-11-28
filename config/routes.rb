Rails.application.routes.draw do
  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # Routes for the Survey resource:
  # CREATE
  get "/surveys/new", :controller => "surveys", :action => "new"
  post "/create_survey", :controller => "surveys", :action => "create"

  # READ
  get "/surveys", :controller => "surveys", :action => "index"
  get "/surveys/:id", :controller => "surveys", :action => "show"

  # UPDATE
  get "/surveys/:id/edit", :controller => "surveys", :action => "edit"
  post "/update_survey/:id", :controller => "surveys", :action => "update"

  # DELETE
  get "/delete_survey/:id", :controller => "surveys", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
