class MoviesController < ApplicationController
  def index
  end

  #post
  def create

    @movies = Movie.new(title: params['title'], year: params['year'])


    if @movies.save
      redirect_to @movies
    else
      render :new, status: :unprocessable_entity
    end
  end

  private


end
