class MoviesController < ApplicationController
  def index
    @movies = if params[:genre] == "php"
                Movie.where(genre: PHP_GENRE_LIST)
              else
                Movie.where(genre: RAILS_GENRE_LIST)
              end
  end
end
