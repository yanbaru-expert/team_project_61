class MoviesController < ApplicationController
  def index
    if params[:genre] == "php"
      @movies = Movie.where(genre: PHP_GENRE_LIST) 
    else
      @movies = Movie.where(genre: RAILS_GENRE_LIST)
    end
    
  end
end
