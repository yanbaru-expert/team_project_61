class TextsController < ApplicationController
  def index
    @texts = Text.where(genre: RAILS_GENRE_LIST).includes(:read_progresses)
  end

  def show
    @text = Text.find(params[:id])
  end
end
