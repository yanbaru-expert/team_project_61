class MoviesController < ApplicationController
  PER_PAGE = 12
  def index
    @movies = if params[:genre] == "php"
                Movie.where(genre: PHP_GENRE_LIST).includes(:watch_progresses)
              else
                Movie.where(genre: RAILS_GENRE_LIST).includes(:watch_progresses)
              end
    @movies = @movies.page(params[:page]).per(PER_PAGE)
  end
end
