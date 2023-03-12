Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index" })
    # get("/users", { :controller => "users", :action => "all_users" })
   get("/users", { :controller => "users", :action => "index" })
   get("/users", { :controller => "users", :action => "create" })
   
   get("/users/:username", { :controller => "users", :action => "show" })

   get("/update_user/:user_id", { :controller => "users", :action => "update" })
   get("/insert_user_record", { :controller => "users", :action => "create" })

  get("/venues", { :controller => "venues", :action => "index" })
  get("/insert_venue_record", { :controller => "venues", :action => "create" })
  get("/venues/:venue_id", { :controller => "venues", :action => "show" })

  get("/delete_venue", { :controller => "venues", :action => "destroy" })
 
  get("/update_venue/:venue_id", { :controller => "venues", :action => "update" }) 
  get("/insert_comment_record", { :controller => "comments", :action => "create" })



  
 
end
