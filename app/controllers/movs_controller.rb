class MovsController < ApplicationController

# create
  def new_form
  end

  def add_movie
    new_movie = Movie.new
    new_movie.title = params['title']
    new_movie.year = params['year'].to_i
    new_movie.image_url = params['picture']
    new_movie.duration = params['duration'].to_i
    new_movie.description = params['description']
    new_movie.save
    redirect_to('/movies/')
  end

  # read
  def show_all
    @all_movies = Movie.all
  end

  def show_movie
    @movie_row = Movie.find(params['id'])
  end

  # update
  def edit_form
    @movie_to_update = Movie.find(params['id'])
  end

  def edit_movie
    update_movie = Movie.find(params['id'])
    update_movie.title = params['title']
    update_movie.year = params['year'].to_i
    update_movie.image_url = params['picture']
    update_movie.duration = params['duration'].to_i
    update_movie.description = params['description']
    update_movie.save
    redirect_to("http://localhost:3000/movies/#{update_movie.id}")
  end

  # delete
  def delete_movie
    @movie_to_delete = Movie.find(params['id'])
    @movie_to_delete.destroy
    redirect_to('/movies/')
  end

end