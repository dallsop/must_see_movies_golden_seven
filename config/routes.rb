Rails.application.routes.draw do

  ### DIRECTORS ###

  #create
  get('/directors/new_form', {:controller => 'directs', :action => 'new_form'})
  get('/directors/add_director', {:controller => 'directs', :action => 'add_director'})

  # read
  get('/directors', {:controller => 'directs', :action => 'show_all'})
  get('/directors/:id', {:controller => 'directs', :action => 'show_director'})

  # update
  get('/directors/:id/edit_form', {:controller => 'directs', :action => 'edit_form'})
  get('/directors/:id/edit_director', {:controller => 'directs', :action => 'edit_director'})

  # delete
  get('/delete_director/:id', {:controller => 'directs', :action => 'delete_director'})


  ### ACTORS ###

  #create
  get('/actors/new_form', {:controller => 'acts', :action => 'new_form'})
  get('/actors/add_actor', {:controller => 'acts', :action => 'add_actor'})

  # read
  get('/actors', {:controller => 'acts', :action => 'show_all'})
  get('/actors/:id', {:controller => 'acts', :action => 'show_actor'})

  # update
  get('/actors/:id/edit_form', {:controller => 'acts', :action => 'edit_form'})
  get('/actors/:id/edit_actor', {:controller => 'acts', :action => 'edit_actor'})

  # delete
  get('/delete_actor/:id', {:controller => 'acts', :action => 'delete_actor'})


  ### MOVIES ###

  #create
  get('/movies/new_form', {:controller => 'movs', :action => 'new_form'})
  get('/movies/add_movie', {:controller => 'movs', :action => 'add_movie'})

  # read
  get('/movies', {:controller => 'movs', :action => 'show_all'})
  get('/movies/:id', {:controller => 'movs', :action => 'show_movie'})

  # update
  get('/movies/:id/edit_form', {:controller => 'movs', :action => 'edit_form'})
  get('/movies/:id/edit_movie', {:controller => 'movs', :action => 'edit_movie'})

  # delete
  get('/delete_movie/:id', {:controller => 'movs', :action => 'delete_movie'})
end
