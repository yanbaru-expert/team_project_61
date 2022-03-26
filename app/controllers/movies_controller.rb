class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: RAILS_GENRE_LIST)
  end
end
