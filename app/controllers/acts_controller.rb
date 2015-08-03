class ActsController < ApplicationController

# create
  def new_form
  end

  def add_actor
    new_actor = Actor.new
    new_actor.name = params['name']
    new_actor.dob = params['birthday']
    new_actor.image_url = params['picture']
    new_actor.bio = params['biography']
    new_actor.save
    redirect_to('/actors/')
  end

  # read
  def show_all
    @all_actors = Actor.all
  end

  def show_actor
    @actor_row = Actor.find(params['id'])
  end

  # update
  def edit_form
    @actor_to_update = Actor.find(params['id'])
  end

  def edit_actor
    update_actor = Actor.find(params['id'])
    update_actor.name = params['name']
    update_actor.dob = params['birthday']
    update_actor.image_url = params['picture']
    update_actor.bio = params['biography']
    update_actor.save
    redirect_to("http://localhost:3000/actors/#{update_actor.id}")
  end

  # delete
  def delete_actor
    @actor_to_delete = Actor.find(params['id'])
    @actor_to_delete.destroy
    redirect_to('/actors/')
  end


end