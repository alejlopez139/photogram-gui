Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})

  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_username", :controller => "users", :action =>"show")
  post("/modify_user/:path_id", { :controller => "users", :action => "update"})
  post("/add_user", { :controller => "users", :action => "create_user"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_id", {:controller => "photos", :action => "show"})
  post("/insert_photo", {:controller => "photos", :action => "create"})
  post("update_photo/:path_id", {:controller => "photos", :action =>"update"})
  get("/delete_photo/:toast_id", {:controller => "photos", :action => "baii"})

  post("/add_comment/:path_id", {:controller => "photos", :action => "create_comment"})
end
