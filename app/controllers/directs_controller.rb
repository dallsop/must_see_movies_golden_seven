class DirectsController < ApplicationController

  # create
  def new_form
  end

  def add_director
    new_director = Director.new
    new_director.name = params['name']
    new_director.dob = params['birthday']
    new_director.image_url = params['picture']
    new_director.bio = params['biography']
    new_director.save
    redirect_to('http://localhost:3000/directors')
  end

  # read
  def show_all
    @all_directors = Director.all
  end

  def show_director
    @director_row = Director.find(params['id'])
  end

  # update
  def edit_form
    @director_to_update = Director.find(params['id'])
  end

  def edit_director
    update_director = Director.find(params['id'])
    update_director.name = params['name']
    update_director.dob = params['birthday']
    update_director.image_url = params['picture']
    update_director.bio = params['biography']
    update_director.save
    redirect_to("http://localhost:3000/directors/#{update_director.id}")
  end

  # delete
  def delete_director
    @director_to_delete = Director.find(params['id'])
    @director_to_delete.destroy
    redirect_to('http://localhost:3000/directors')
  end


end