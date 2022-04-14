class MoviesController < ApplicationController
  def index
    @movies = if params[:genre] == "php"
                Movie.where(genre: PHP_GENRE_LIST).includes(:watch_progresses)
              else
                Movie.where(genre: RAILS_GENRE_LIST).includes(:watch_progresses)
              end
  end
end
